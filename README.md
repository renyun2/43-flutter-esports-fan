# 电竞赛事粉丝数据 App（项目 43）

电竞粉丝 App：赛程赛果、战队选手数据、赛事预测、应援商城、选手动态、战报复盘、粉丝勋章、线下观赛票与站内消息。前端 Flutter Web，后端 Express + SQLite Mock API。

## 技术栈

| 层 | 技术 |
|---|---|
| 前端 | Flutter 3.22+、Riverpod、freezed、go_router、dio、fl_chart |
| 后端 | Express + better-sqlite3，端口 `3030` |

## 目录结构

```
43-flutter-esports-fan/
├── backend/          # Mock API + seed + 测试
├── esports_fan/      # Flutter 应用（22 个页面）
├── prompt.md         # 需求规格
└── README.md
```

## 前置条件

- Node.js 18+
- Flutter 3.22+（已验证 3.44）

## 启动

### 1. 后端

```bash
cd backend
npm install
npm run dev          # http://localhost:3030
```

首次启动自动 seed：8 战队、40 选手、32 场赛事。

手动重建数据：

```bash
npm run seed
```

### 2. Flutter Web

```bash
cd esports_fan
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run -d chrome --web-port=5200 --dart-define=API_BASE=http://localhost:3030
```

测试账号：`fan1` / `123456`

## 页面路由（22 页）

| 路由 | 页面 |
|------|------|
| `/splash` | 启动 |
| `/login` | 登录 |
| `/home` | 首页（今日赛程） |
| `/matches` | 赛程 |
| `/match/:id` | 比赛详情 |
| `/match/:id/recap` | 战报 |
| `/match/:id/predict` | 预测（开赛前 countdown） |
| `/leaderboard` | 预测榜 |
| `/teams` | 战队列表 |
| `/team/:id` | 战队详情 |
| `/player/:id` | 选手详情（fl_chart 雷达图） |
| `/feeds` | 动态（可按关注过滤） |
| `/merch` | 应援商城 |
| `/merch/:id` | 商品详情 |
| `/orders` | 订单 |
| `/badges` | 粉丝勋章 |
| `/points` | 积分中心 |
| `/tickets` | 线下票务 |
| `/following` | 我的关注 |
| `/messages` | 消息 |
| `/profile` | 个人中心 |
| `/settings` | 设置 |

底部导航：首页 | 赛程 | 战队 | 我的

## 运行测试

```bash
cd backend
npm test
```

覆盖场景：

- 预测截止：开赛后/进行中不可预测
- 积分结算：预测正确 +10 分
- 关注 feed：按已关注战队过滤动态

## 业务规则

- 开赛后不可提交预测；未开赛显示倒计时
- 预测消耗 5 积分，猜对奖励 10 积分
- 关注战队后生成开赛提醒站内消息
- 进行中比赛 Mock 轮询刷新比分（8 秒/10 秒）
