# 项目 43：电竞赛事粉丝数据 App（Flutter）

> 本文件仅描述需求，不包含任何实现代码。UI 使用 Material 基础组件，不做美化。

## 一、项目简介
电竞粉丝 App：赛程赛果、战队选手数据、赛事预测 Mock、应援商城、选手动态、战报复盘、粉丝勋章、线下观赛票 Mock、战队关注推送。偏赛事数据与粉丝运营，非游戏本体。

## 二、技术栈

### 前端
- Flutter 3.22+、Riverpod + freezed、go_router、dio
- fl_chart（选手 KDA、战队胜率）

### 后端 Mock
- Express + SQLite，端口 `3030`

### Web 兼容约束
- **禁止**：游戏内 API、直播拉流 SDK、推送原生（Web 用站内消息）
- **替代**：赛果=Mock 数据；预测=积分玩法；观赛票=电子票码

## 三、后端 Mock API 设计

| 模块 | 路径 | 说明 |
|------|------|------|
| 认证 | `/api/auth/*` | |
| 赛事 | GET `/api/matches` | 按游戏、日期 |
| 赛事 | GET `/api/matches/:id` | 对阵、BO 比分 |
| 战队 | GET `/api/teams` | |
| 战队 | GET `/api/teams/:id` | 阵容 |
| 选手 | GET `/api/players/:id` | 统计 |
| 关注 | POST/DELETE `/api/follows` | 战队/选手 |
| 预测 | POST `/api/predictions` | 消耗积分 |
| 预测 | GET `/api/predictions/leaderboard` | |
| 积分 | GET `/api/fan-points` | |
| 动态 | GET `/api/feeds` | 战队官方 |
| 战报 | GET `/api/matches/:id/recap` | 文字复盘 |
| 商城 | GET `/api/merch` | 应援物 |
| 订单 | POST/GET `/api/orders` | |
| 勋章 | GET `/api/badges` | 成就 |
| 票务 | GET `/api/tickets/events` | 线下 |
| 消息 | `/api/notifications` | |

**业务规则**：开赛后不可预测；预测正确 +10 分；关注战队开赛提醒 Mock。

## 四、页面清单（≥22 页）

| 序号 | 页面 | 路由 | 说明 |
|------|------|------|------|
| 1 | 启动 | `/splash` | |
| 2 | 登录 | `/login` | |
| 3 | 首页 | `/home` | 今日赛程 |
| 4 | 赛程 | `/matches` | |
| 5 | 比赛详情 | `/match/:id` | 比分、预测入口 |
| 6 | 战报 | `/match/:id/recap` | |
| 7 | 预测 | `/match/:id/predict` | |
| 8 | 预测榜 | `/leaderboard` | |
| 9 | 战队列表 | `/teams` | |
| 10 | 战队详情 | `/team/:id` | 关注 |
| 11 | 选手详情 | `/player/:id` | fl_chart |
| 12 | 动态 | `/feeds` | |
| 13 | 应援商城 | `/merch` | |
| 14 | 商品详情 | `/merch/:id` | |
| 15 | 订单 | `/orders` | |
| 16 | 粉丝勋章 | `/badges` | |
| 17 | 积分中心 | `/points` | |
| 18 | 线下票务 | `/tickets` | |
| 19 | 我的关注 | `/following` | |
| 20 | 消息 | `/messages` | |
| 21 | 个人中心 | `/profile` | |
| 22 | 设置 | `/settings` | |

**底部导航**：首页 | 赛程 | 战队 | 我的

## 五、核心功能需求
1. 赛程：进行中高亮+实时比分 Mock 轮询
2. 选手雷达图：fl_chart 多维度
3. 预测：开赛前截止 countdown
4. 关注：feeds 过滤

## 六、编译与调试
```bash
cd backend && npm run dev    # :3030
flutter run -d chrome --web-port=5200 --dart-define=API_BASE=http://localhost:3030
```

## 七、交付物
- seed：≥30 场赛事、8 战队、40 选手统计
- 测试：预测截止、积分结算、关注 feed
- README

## 八、本次任务
**只列出需求和架构规划，不要写代码。**
