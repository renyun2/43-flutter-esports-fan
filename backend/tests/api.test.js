const { describe, it, before, after } = require('node:test');
const assert = require('node:assert/strict');
const fs = require('fs');
const path = require('path');
const { createApp, CORRECT_BONUS } = require('../src/server');
const { dbPath } = require('../src/db');
const { seed } = require('../src/seed');

let app;
let server;
let baseUrl;

function request(method, path, body, token) {
  const headers = { 'Content-Type': 'application/json' };
  if (token) headers.Authorization = `Bearer ${token}`;
  return fetch(`${baseUrl}${path}`, {
    method,
    headers,
    body: body ? JSON.stringify(body) : undefined,
  }).then(async (res) => ({
    status: res.status,
    body: await res.json().catch(() => ({})),
  }));
}

before(async () => {
  if (fs.existsSync(dbPath)) fs.unlinkSync(dbPath);
  seed();
  app = createApp();
  await new Promise((resolve) => {
    server = app.listen(0, () => {
      const { port } = server.address();
      baseUrl = `http://127.0.0.1:${port}`;
      resolve();
    });
  });
});

after(() => {
  server?.close();
  if (fs.existsSync(dbPath)) fs.unlinkSync(dbPath);
});

describe('预测截止', () => {
  it('开赛后或进行中不可提交预测', async () => {
    const login = await request('POST', '/api/auth/login', {
      username: 'fan1',
      password: '123456',
    });
    const token = login.body.token;

    const matches = await request('GET', '/api/matches');
    const live = matches.body.find((m) => m.status === 'live');
    assert.ok(live, '应有进行中比赛');

    const res = await request(
      'POST',
      '/api/predictions',
      { match_id: live.id, predicted_winner_id: live.team_a_id },
      token
    );
    assert.equal(res.status, 400);
    assert.match(res.body.error, /不可预测|截止/);
  });

  it('未开赛可成功预测并扣积分', async () => {
    const login = await request('POST', '/api/auth/login', {
      username: 'fan2',
      password: '123456',
    });
    const token = login.body.token;
    const before = await request('GET', '/api/fan-points', null, token);

    const matches = await request('GET', '/api/matches');
    const scheduled = matches.body.find(
      (m) => m.status === 'scheduled' && new Date(m.start_time) > new Date()
    );
    assert.ok(scheduled, '应有未来赛程');

    const res = await request(
      'POST',
      '/api/predictions',
      { match_id: scheduled.id, predicted_winner_id: scheduled.team_b_id },
      token
    );
    assert.equal(res.status, 200);
    assert.equal(res.body.ok, true);
    assert.equal(res.body.fanPoints, before.body.points - 5);
  });
});

describe('积分结算', () => {
  it('预测正确结算后增加 10 积分', async () => {
    const Database = require('better-sqlite3');
    const db = new Database(dbPath);

    const finished = db
      .prepare("SELECT * FROM matches WHERE status = 'finished' AND winner_id IS NOT NULL LIMIT 1")
      .get();
    assert.ok(finished);

    const login = await request('POST', '/api/auth/register', {
      username: `test_${Date.now()}`,
      password: 'x',
      display_name: '测试用户',
    });
    const userId = login.body.userId;
    const token = login.body.token;

    db.prepare('UPDATE users SET fan_points = 50 WHERE id = ?').run(userId);
    db.prepare(
      'INSERT INTO predictions (user_id, match_id, predicted_winner_id, points_spent, settled) VALUES (?, ?, ?, 5, 0)'
    ).run(userId, finished.id, finished.winner_id);
    db.close();

    await request('GET', '/api/predictions/leaderboard');

    const points = await request('GET', '/api/fan-points', null, token);
    assert.equal(points.body.points, 50 + CORRECT_BONUS);
  });
});

describe('关注 feed 过滤', () => {
  it('按关注战队过滤动态', async () => {
    const login = await request('POST', '/api/auth/login', {
      username: 'fan1',
      password: '123456',
    });
    const token = login.body.token;

    const follows = await request('GET', '/api/follows', null, token);
    const teamIds = follows.body
      .filter((f) => f.target_type === 'team')
      .map((f) => f.target_id);
    assert.ok(teamIds.length >= 1);

    const filtered = await request(
      'GET',
      `/api/feeds?team_ids=${teamIds.join(',')}`,
      null,
      token
    );
    assert.ok(filtered.body.length > 0);
    for (const feed of filtered.body) {
      assert.ok(teamIds.includes(feed.team_id), '动态应属于已关注战队');
    }

    const all = await request('GET', '/api/feeds');
    assert.ok(all.body.length > filtered.body.length || all.body.length >= filtered.body.length);
  });
});
