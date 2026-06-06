const express = require('express');
const cors = require('cors');
const fs = require('fs');
const path = require('path');
const { getDb, initSchema, dbPath } = require('./db');
const { seed } = require('./seed');

const PORT = 3030;
const PREDICTION_COST = 5;
const CORRECT_BONUS = 10;

function ensureDb() {
  const dataDir = path.dirname(dbPath);
  if (!fs.existsSync(dataDir)) fs.mkdirSync(dataDir, { recursive: true });
  if (!fs.existsSync(dbPath)) {
    seed();
  }
  const db = getDb();
  initSchema(db);
  const count = db.prepare('SELECT COUNT(*) as c FROM teams').get().c;
  if (count === 0) seed();
  return db;
}

function authMiddleware(req, res, next) {
  const token = req.headers.authorization?.replace('Bearer ', '');
  if (!token) {
    req.userId = null;
    return next();
  }
  const userId = parseInt(token.replace('user-', ''), 10);
  if (isNaN(userId)) return res.status(401).json({ error: '无效令牌' });
  const db = getDb();
  const user = db.prepare('SELECT id FROM users WHERE id = ?').get(userId);
  db.close();
  if (!user) return res.status(401).json({ error: '用户不存在' });
  req.userId = userId;
  next();
}

function requireAuth(req, res, next) {
  if (!req.userId) return res.status(401).json({ error: '请先登录' });
  next();
}

function enrichMatch(db, m) {
  const ta = db.prepare('SELECT * FROM teams WHERE id = ?').get(m.team_a_id);
  const tb = db.prepare('SELECT * FROM teams WHERE id = ?').get(m.team_b_id);
  return { ...m, team_a: ta, team_b: tb };
}

function settleFinishedMatches(db) {
  const finished = db
    .prepare("SELECT * FROM matches WHERE status = 'finished' AND winner_id IS NOT NULL")
    .all();
  for (const m of finished) {
    const preds = db
      .prepare('SELECT * FROM predictions WHERE match_id = ? AND settled = 0')
      .all(m.id);
    for (const p of preds) {
      const correct = p.predicted_winner_id === m.winner_id ? 1 : 0;
      db.prepare(
        'UPDATE predictions SET is_correct = ?, settled = 1 WHERE id = ?'
      ).run(correct, p.id);
      if (correct) {
        db.prepare('UPDATE users SET fan_points = fan_points + ? WHERE id = ?').run(
          CORRECT_BONUS,
          p.user_id
        );
      }
    }
  }
}

function createApp() {
  ensureDb();
  const app = express();
  app.use(cors());
  app.use(express.json());
  app.use(authMiddleware);

  app.post('/api/auth/register', (req, res) => {
    const { username, password, display_name } = req.body;
    if (!username || !password)
      return res.status(400).json({ error: '用户名和密码必填' });
    const db = getDb();
    try {
      const r = db
        .prepare('INSERT INTO users (username, password, display_name) VALUES (?, ?, ?)')
        .run(username, password, display_name || username);
      db.close();
      res.json({ token: `user-${r.lastInsertRowid}`, userId: r.lastInsertRowid });
    } catch (e) {
      db.close();
      res.status(409).json({ error: '用户名已存在' });
    }
  });

  app.post('/api/auth/login', (req, res) => {
    const { username, password } = req.body;
    const db = getDb();
    const user = db
      .prepare('SELECT * FROM users WHERE username = ? AND password = ?')
      .get(username, password);
    db.close();
    if (!user) return res.status(401).json({ error: '用户名或密码错误' });
    res.json({
      token: `user-${user.id}`,
      userId: user.id,
      displayName: user.display_name,
      fanPoints: user.fan_points,
    });
  });

  app.get('/api/matches', (req, res) => {
    const { game, date } = req.query;
    const db = getDb();
    settleFinishedMatches(db);
    let sql = 'SELECT * FROM matches WHERE 1=1';
    const params = [];
    if (game) {
      sql += ' AND game = ?';
      params.push(game);
    }
    if (date) {
      sql += " AND date(start_time) = date(?)";
      params.push(date);
    }
    sql += ' ORDER BY start_time ASC';
    const rows = db.prepare(sql).all(...params).map((m) => enrichMatch(db, m));
    db.close();
    res.json(rows);
  });

  app.get('/api/matches/:id', (req, res) => {
    const db = getDb();
    const m = db.prepare('SELECT * FROM matches WHERE id = ?').get(req.params.id);
    if (!m) {
      db.close();
      return res.status(404).json({ error: '比赛不存在' });
    }
    db.close();
    res.json(enrichMatch(getDb(), m));
  });

  app.get('/api/matches/:id/recap', (req, res) => {
    const db = getDb();
    const recap = db
      .prepare('SELECT * FROM match_recaps WHERE match_id = ?')
      .get(req.params.id);
    db.close();
    if (!recap) return res.status(404).json({ error: '战报尚未生成' });
    res.json(recap);
  });

  app.get('/api/teams', (req, res) => {
    const db = getDb();
    const teams = db.prepare('SELECT * FROM teams ORDER BY id').all();
    db.close();
    res.json(teams);
  });

  app.get('/api/teams/:id', (req, res) => {
    const db = getDb();
    const team = db.prepare('SELECT * FROM teams WHERE id = ?').get(req.params.id);
    if (!team) {
      db.close();
      return res.status(404).json({ error: '战队不存在' });
    }
    const roster = db
      .prepare('SELECT * FROM players WHERE team_id = ?')
      .all(req.params.id);
    const followed = req.userId
      ? !!db
          .prepare(
            'SELECT 1 FROM follows WHERE user_id = ? AND target_type = ? AND target_id = ?'
          )
          .get(req.userId, 'team', team.id)
      : false;
    db.close();
    res.json({ ...team, roster, followed });
  });

  app.get('/api/players/:id', (req, res) => {
    const db = getDb();
    const player = db.prepare('SELECT * FROM players WHERE id = ?').get(req.params.id);
    if (!player) {
      db.close();
      return res.status(404).json({ error: '选手不存在' });
    }
    const team = db.prepare('SELECT * FROM teams WHERE id = ?').get(player.team_id);
    db.close();
    res.json({ ...player, team });
  });

  app.get('/api/follows', requireAuth, (req, res) => {
    const db = getDb();
    const rows = db
      .prepare('SELECT * FROM follows WHERE user_id = ? ORDER BY created_at DESC')
      .all(req.userId);
    const enriched = rows.map((f) => {
      if (f.target_type === 'team') {
        const t = db.prepare('SELECT * FROM teams WHERE id = ?').get(f.target_id);
        return { ...f, target: t };
      }
      const p = db.prepare('SELECT * FROM players WHERE id = ?').get(f.target_id);
      return { ...f, target: p };
    });
    db.close();
    res.json(enriched);
  });

  app.post('/api/follows', requireAuth, (req, res) => {
    const { target_type, target_id } = req.body;
    if (!['team', 'player'].includes(target_type))
      return res.status(400).json({ error: '无效关注类型' });
    const db = getDb();
    try {
      db.prepare(
        'INSERT INTO follows (user_id, target_type, target_id) VALUES (?, ?, ?)'
      ).run(req.userId, target_type, target_id);
      if (target_type === 'team') {
        const team = db.prepare('SELECT name FROM teams WHERE id = ?').get(target_id);
        db.prepare(
          'INSERT INTO notifications (user_id, title, body) VALUES (?, ?, ?)'
        ).run(
          req.userId,
          '关注成功',
          `已关注 ${team?.name || '战队'}，开赛时将收到提醒`
        );
      }
      db.close();
      res.json({ ok: true });
    } catch {
      db.close();
      res.status(409).json({ error: '已关注' });
    }
  });

  app.delete('/api/follows', requireAuth, (req, res) => {
    const { target_type, target_id } = req.body;
    const db = getDb();
    db.prepare(
      'DELETE FROM follows WHERE user_id = ? AND target_type = ? AND target_id = ?'
    ).run(req.userId, target_type, target_id);
    db.close();
    res.json({ ok: true });
  });

  app.get('/api/fan-points', requireAuth, (req, res) => {
    const db = getDb();
    const user = db
      .prepare('SELECT fan_points, display_name FROM users WHERE id = ?')
      .get(req.userId);
    const history = db
      .prepare(
        `SELECT p.*, m.tournament FROM predictions p
         JOIN matches m ON m.id = p.match_id
         WHERE p.user_id = ? ORDER BY p.created_at DESC LIMIT 20`
      )
      .all(req.userId);
    db.close();
    res.json({ points: user.fan_points, displayName: user.display_name, history });
  });

  app.post('/api/predictions', requireAuth, (req, res) => {
    const { match_id, predicted_winner_id } = req.body;
    const db = getDb();
    const match = db.prepare('SELECT * FROM matches WHERE id = ?').get(match_id);
    if (!match) {
      db.close();
      return res.status(404).json({ error: '比赛不存在' });
    }
    if (match.status !== 'scheduled') {
      db.close();
      return res.status(400).json({ error: '开赛后不可预测' });
    }
    if (new Date(match.start_time) <= new Date()) {
      db.close();
      return res.status(400).json({ error: '预测已截止' });
    }
    const user = db.prepare('SELECT fan_points FROM users WHERE id = ?').get(req.userId);
    if (user.fan_points < PREDICTION_COST) {
      db.close();
      return res.status(400).json({ error: '积分不足' });
    }
    try {
      db.prepare(
        'INSERT INTO predictions (user_id, match_id, predicted_winner_id, points_spent) VALUES (?, ?, ?, ?)'
      ).run(req.userId, match_id, predicted_winner_id, PREDICTION_COST);
      db.prepare('UPDATE users SET fan_points = fan_points - ? WHERE id = ?').run(
        PREDICTION_COST,
        req.userId
      );
      const updated = db.prepare('SELECT fan_points FROM users WHERE id = ?').get(req.userId);
      db.close();
      res.json({ ok: true, fanPoints: updated.fan_points });
    } catch {
      db.close();
      res.status(409).json({ error: '已提交过预测' });
    }
  });

  app.get('/api/predictions/leaderboard', (req, res) => {
    const db = getDb();
    settleFinishedMatches(db);
    const rows = db
      .prepare(
        `SELECT u.display_name, u.fan_points,
                SUM(CASE WHEN p.is_correct = 1 THEN 1 ELSE 0 END) as correct_count,
                COUNT(p.id) as total_predictions
         FROM users u
         LEFT JOIN predictions p ON p.user_id = u.id
         GROUP BY u.id
         ORDER BY correct_count DESC, u.fan_points DESC
         LIMIT 50`
      )
      .all();
    db.close();
    res.json(rows);
  });

  app.get('/api/feeds', (req, res) => {
    const { team_ids } = req.query;
    const db = getDb();
    let sql = 'SELECT f.*, t.name as team_name FROM feeds f JOIN teams t ON t.id = f.team_id';
    const params = [];
    if (team_ids) {
      const ids = team_ids.split(',').map(Number).filter(Boolean);
      if (ids.length) {
        sql += ` WHERE f.team_id IN (${ids.map(() => '?').join(',')})`;
        params.push(...ids);
      }
    }
    sql += ' ORDER BY f.created_at DESC LIMIT 50';
    const rows = db.prepare(sql).all(...params);
    db.close();
    res.json(rows);
  });

  app.get('/api/merch', (req, res) => {
    const db = getDb();
    const rows = db
      .prepare(
        `SELECT m.*, t.name as team_name FROM merch m
         LEFT JOIN teams t ON t.id = m.team_id ORDER BY m.id`
      )
      .all();
    db.close();
    res.json(rows);
  });

  app.get('/api/merch/:id', (req, res) => {
    const db = getDb();
    const item = db
      .prepare(
        `SELECT m.*, t.name as team_name FROM merch m
         LEFT JOIN teams t ON t.id = m.team_id WHERE m.id = ?`
      )
      .get(req.params.id);
    db.close();
    if (!item) return res.status(404).json({ error: '商品不存在' });
    res.json(item);
  });

  app.get('/api/orders', requireAuth, (req, res) => {
    const db = getDb();
    const rows = db
      .prepare(
        `SELECT o.*, m.name as merch_name FROM orders o
         JOIN merch m ON m.id = o.merch_id
         WHERE o.user_id = ? ORDER BY o.created_at DESC`
      )
      .all(req.userId);
    db.close();
    res.json(rows);
  });

  app.post('/api/orders', requireAuth, (req, res) => {
    const { merch_id, quantity = 1 } = req.body;
    const db = getDb();
    const item = db.prepare('SELECT * FROM merch WHERE id = ?').get(merch_id);
    if (!item) {
      db.close();
      return res.status(404).json({ error: '商品不存在' });
    }
    const total = item.price * quantity;
    const user = db.prepare('SELECT fan_points FROM users WHERE id = ?').get(req.userId);
    if (user.fan_points < total) {
      db.close();
      return res.status(400).json({ error: '积分不足' });
    }
    const r = db
      .prepare(
        'INSERT INTO orders (user_id, merch_id, quantity, total_price, status) VALUES (?, ?, ?, ?, ?)'
      )
      .run(req.userId, merch_id, quantity, total, 'paid');
    db.prepare('UPDATE users SET fan_points = fan_points - ? WHERE id = ?').run(total, req.userId);
    db.close();
    res.json({ ok: true, orderId: r.lastInsertRowid });
  });

  app.get('/api/badges', requireAuth, (req, res) => {
    const db = getDb();
    const all = db.prepare('SELECT * FROM badges').all();
    const earned = db
      .prepare('SELECT badge_id, earned_at FROM user_badges WHERE user_id = ?')
      .all(req.userId);
    const earnedMap = Object.fromEntries(earned.map((e) => [e.badge_id, e.earned_at]));
    db.close();
    res.json(
      all.map((b) => ({
        ...b,
        earned: !!earnedMap[b.id],
        earned_at: earnedMap[b.id] || null,
      }))
    );
  });

  app.get('/api/tickets/events', (req, res) => {
    const db = getDb();
    const rows = db
      .prepare(
        `SELECT te.*, t.name as team_name FROM ticket_events te
         LEFT JOIN teams t ON t.id = te.team_id ORDER BY te.event_date`
      )
      .all();
    db.close();
    res.json(rows);
  });

  app.get('/api/notifications', requireAuth, (req, res) => {
    const db = getDb();
    const rows = db
      .prepare(
        'SELECT * FROM notifications WHERE user_id = ? ORDER BY created_at DESC LIMIT 50'
      )
      .all(req.userId);
    db.close();
    res.json(rows);
  });

  app.patch('/api/notifications/:id/read', requireAuth, (req, res) => {
    const db = getDb();
    db.prepare(
      'UPDATE notifications SET read = 1 WHERE id = ? AND user_id = ?'
    ).run(req.params.id, req.userId);
    db.close();
    res.json({ ok: true });
  });

  return app;
}

if (require.main === module) {
  const app = createApp();
  app.listen(PORT, () => console.log(`Esports Fan API http://localhost:${PORT}`));
}

module.exports = { createApp, ensureDb, PREDICTION_COST, CORRECT_BONUS };
