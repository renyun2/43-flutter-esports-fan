const fs = require('fs');
const path = require('path');
const { getDb, initSchema, dbPath } = require('./db');

const GAMES = ['LOL', 'DOTA2', 'CS2', 'VALORANT'];
const ROLES = ['上单', '打野', '中单', 'ADC', '辅助', '一号位', '二号位', '狙击手', '指挥'];

const TEAMS = [
  { name: '雷霆电竞', game: 'LOL', region: 'LPL', color: '#EF4444' },
  { name: '星辰战队', game: 'LOL', region: 'LPL', color: '#3B82F6' },
  { name: '烈焰先锋', game: 'DOTA2', region: 'CN', color: '#F97316' },
  { name: '暗影骑士', game: 'DOTA2', region: 'SEA', color: '#8B5CF6' },
  { name: '钢铁防线', game: 'CS2', region: 'CN', color: '#6B7280' },
  { name: '疾风突击', game: 'CS2', region: 'EU', color: '#10B981' },
  { name: '霓虹幻影', game: 'VALORANT', region: 'VCT-CN', color: '#EC4899' },
  { name: '苍穹之翼', game: 'VALORANT', region: 'VCT-AP', color: '#06B6D4' },
];

const PLAYER_NAMES = [
  'Alex', 'Blaze', 'Cipher', 'Drake', 'Echo', 'Frost', 'Ghost', 'Hawk',
  'Iris', 'Jade', 'Kite', 'Luna', 'Mars', 'Nova', 'Orion', 'Pulse',
  'Quinn', 'Rex', 'Storm', 'Titan', 'Umbra', 'Vex', 'Wolf', 'Xen',
  'Yuki', 'Zed', 'Ace', 'Bolt', 'Crown', 'Dusk', 'Edge', 'Flux',
  'Gale', 'Hex', 'Ion', 'Jinx', 'Kyro', 'Lux', 'Myth', 'Nero',
];

function daysFromNow(n, hour = 18) {
  const d = new Date();
  d.setDate(d.getDate() + n);
  d.setHours(hour, 0, 0, 0);
  return d.toISOString();
}

function hoursFromNow(h) {
  const d = new Date();
  d.setHours(d.getHours() + h);
  return d.toISOString();
}

function hoursAgo(h) {
  const d = new Date();
  d.setHours(d.getHours() - h);
  return d.toISOString();
}

function seed() {
  const dataDir = path.dirname(dbPath);
  if (!fs.existsSync(dataDir)) fs.mkdirSync(dataDir, { recursive: true });

  const db = getDb();
  initSchema(db);

  db.exec('DELETE FROM notifications');
  db.exec('DELETE FROM user_badges');
  db.exec('DELETE FROM orders');
  db.exec('DELETE FROM predictions');
  db.exec('DELETE FROM follows');
  db.exec('DELETE FROM match_recaps');
  db.exec('DELETE FROM feeds');
  db.exec('DELETE FROM ticket_events');
  db.exec('DELETE FROM merch');
  db.exec('DELETE FROM badges');
  db.exec('DELETE FROM matches');
  db.exec('DELETE FROM players');
  db.exec('DELETE FROM teams');
  db.exec('DELETE FROM users');

  const insertUser = db.prepare(
    'INSERT INTO users (username, password, display_name, fan_points) VALUES (?, ?, ?, ?)'
  );
  insertUser.run('fan1', '123456', '电竞粉丝甲', 120);
  insertUser.run('fan2', '123456', '电竞粉丝乙', 80);

  const insertTeam = db.prepare(
    'INSERT INTO teams (name, game, region, win_rate, logo_color) VALUES (?, ?, ?, ?, ?)'
  );
  const teamIds = TEAMS.map((t, i) => {
    const r = insertTeam.run(t.name, t.game, t.region, 0.45 + (i % 5) * 0.05, t.color);
    return r.lastInsertRowid;
  });

  const insertPlayer = db.prepare(
    `INSERT INTO players (team_id, name, role, kda, cs_per_min, vision_score, damage_share, teamfight, consistency)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`
  );
  let playerIdx = 0;
  const playersByTeam = {};
  for (let ti = 0; ti < teamIds.length; ti++) {
    playersByTeam[teamIds[ti]] = [];
    for (let pi = 0; pi < 5; pi++) {
      const r = insertPlayer.run(
        teamIds[ti],
        PLAYER_NAMES[playerIdx % PLAYER_NAMES.length],
        ROLES[pi % ROLES.length],
        2.5 + Math.random() * 4,
        6 + Math.random() * 3,
        40 + Math.random() * 40,
        0.15 + Math.random() * 0.2,
        0.5 + Math.random() * 0.4,
        0.6 + Math.random() * 0.35
      );
      playersByTeam[teamIds[ti]].push(r.lastInsertRowid);
      playerIdx++;
    }
  }

  const insertMatch = db.prepare(
    `INSERT INTO matches (game, tournament, team_a_id, team_b_id, start_time, status, bo_format, score_a, score_b, winner_id)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`
  );
  const insertRecap = db.prepare('INSERT INTO match_recaps (match_id, content) VALUES (?, ?)');
  const matchIds = [];

  for (let i = 0; i < 32; i++) {
    const game = GAMES[i % GAMES.length];
    const sameGameTeams = teamIds.filter((_, idx) => TEAMS[idx].game === game);
    const a = sameGameTeams[i % sameGameTeams.length];
    const b = sameGameTeams[(i + 1) % sameGameTeams.length];
    let status, startTime, scoreA = 0, scoreB = 0, winner = null;

    if (i < 8) {
      status = 'finished';
      startTime = hoursAgo(24 + i * 6);
      scoreA = 2;
      scoreB = i % 3;
      winner = scoreA > scoreB ? a : b;
    } else if (i < 12) {
      status = 'live';
      startTime = hoursAgo(1);
      scoreA = 1;
      scoreB = i % 2;
    } else {
      status = 'scheduled';
      startTime = daysFromNow(i - 11, 14 + (i % 8));
    }

    const r = insertMatch.run(
      game,
      `${game} 职业联赛 S${2024 + (i % 2)} 第${(i % 10) + 1}轮`,
      a,
      b,
      startTime,
      status,
      3,
      scoreA,
      scoreB,
      winner
    );
    matchIds.push(r.lastInsertRowid);

    if (status === 'finished') {
      insertRecap.run(
        r.lastInsertRowid,
        `本场 BO3 中，${TEAMS[teamIds.indexOf(winner)].name} 以 ${scoreA}:${scoreB} 取胜。首局前期控图占优，中期团战打出关键击杀，决胜局经济领先 5k 终结比赛。MVP 表现亮眼，粉丝应援热度创赛季新高。`
      );
    }
  }

  const insertFeed = db.prepare(
    'INSERT INTO feeds (team_id, title, content, created_at) VALUES (?, ?, ?, ?)'
  );
  for (let ti = 0; ti < teamIds.length; ti++) {
    for (let fi = 0; fi < 3; fi++) {
      insertFeed.run(
        teamIds[ti],
        `${TEAMS[ti].name} 官方动态 #${fi + 1}`,
        `战队训练赛总结：针对 ${GAMES[ti % GAMES.length]} 版本_META 进行了战术演练，下周赛程备战顺利。`,
        hoursAgo(fi * 12 + ti)
      );
    }
  }

  const insertMerch = db.prepare(
    'INSERT INTO merch (team_id, name, price, description, stock) VALUES (?, ?, ?, ?, ?)'
  );
  for (let ti = 0; ti < teamIds.length; ti++) {
    insertMerch.run(teamIds[ti], `${TEAMS[ti].name} 应援围巾`, 89, '官方应援围巾，赛事限定色', 200);
    insertMerch.run(teamIds[ti], `${TEAMS[ti].name} 战队徽章`, 39, '金属徽章套装', 500);
  }
  insertMerch.run(null, '通用电竞鼠标垫', 59, '全战队联名款', 300);

  const insertBadge = db.prepare(
    'INSERT INTO badges (name, description, icon, requirement) VALUES (?, ?, ?, ?)'
  );
  const badgeIds = [
    insertBadge.run('初来乍到', '完成首次登录', '🌟', 'login').lastInsertRowid,
    insertBadge.run('预言家', '首次预测正确', '🔮', 'predict_correct').lastInsertRowid,
    insertBadge.run('铁杆粉丝', '关注 3 支战队', '❤️', 'follow_3').lastInsertRowid,
    insertBadge.run('应援达人', '完成首笔商城订单', '🛍️', 'first_order').lastInsertRowid,
  ];
  db.prepare('INSERT INTO user_badges (user_id, badge_id) VALUES (1, ?)').run(badgeIds[0]);

  const insertTicket = db.prepare(
    'INSERT INTO ticket_events (title, venue, event_date, price, team_id, capacity) VALUES (?, ?, ?, ?, ?, ?)'
  );
  for (let ti = 0; ti < 4; ti++) {
    insertTicket.run(
      `${TEAMS[ti].name} 主场观赛日`,
      `电竞中心 ${ti + 1} 号馆`,
      daysFromNow(14 + ti * 7),
      199 + ti * 50,
      teamIds[ti],
      800
    );
  }

  db.prepare(
    'INSERT INTO follows (user_id, target_type, target_id) VALUES (1, ?, ?)'
  ).run('team', teamIds[0]);
  db.prepare(
    'INSERT INTO follows (user_id, target_type, target_id) VALUES (1, ?, ?)'
  ).run('team', teamIds[1]);

  const futureMatch = db
    .prepare("SELECT id, team_a_id FROM matches WHERE status = 'scheduled' LIMIT 1")
    .get();
  if (futureMatch) {
    db.prepare(
      'INSERT INTO predictions (user_id, match_id, predicted_winner_id, points_spent) VALUES (1, ?, ?, 5)'
    ).run(futureMatch.id, futureMatch.team_a_id);
  }

  db.prepare(
    'INSERT INTO notifications (user_id, title, body) VALUES (1, ?, ?)'
  ).run('开赛提醒', `${TEAMS[0].name} 的比赛即将开始，快来为你支持的战队加油！`);

  db.close();
  console.log('Seed complete: 8 teams, 40 players, 32 matches');
}

if (require.main === module) seed();

module.exports = { seed };
