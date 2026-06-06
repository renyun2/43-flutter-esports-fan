import 'package:dio/dio.dart';
import 'package:esports_fan/config/api_config.dart';
import 'package:esports_fan/models/models.dart';

class ApiService {
  ApiService(this._token);

  String? _token;
  final Dio _dio = Dio(BaseOptions(baseUrl: apiBase));

  void setToken(String? token) => _token = token;

  Options get _auth => Options(
        headers: _token != null ? {'Authorization': 'Bearer $_token'} : null,
      );

  Future<Map<String, dynamic>> login(String username, String password) async {
    final res = await _dio.post('/api/auth/login', data: {
      'username': username,
      'password': password,
    });
    return res.data as Map<String, dynamic>;
  }

  Future<List<Match>> getMatches({String? game}) async {
    final res = await _dio.get('/api/matches', queryParameters: {
      if (game != null) 'game': game,
    });
    return (res.data as List).map((e) => Match.fromJson(e)).toList();
  }

  Future<Match> getMatch(int id) async {
    final res = await _dio.get('/api/matches/$id');
    return Match.fromJson(res.data);
  }

  Future<String> getRecap(int matchId) async {
    final res = await _dio.get('/api/matches/$matchId/recap');
    return res.data['content'] as String;
  }

  Future<List<Team>> getTeams() async {
    final res = await _dio.get('/api/teams');
    return (res.data as List).map((e) => Team.fromJson(e)).toList();
  }

  Future<Team> getTeam(int id) async {
    final res = await _dio.get('/api/teams/$id', options: _auth);
    return Team.fromJson(res.data);
  }

  Future<Player> getPlayer(int id) async {
    final res = await _dio.get('/api/players/$id');
    return Player.fromJson(res.data);
  }

  Future<List<Follow>> getFollows() async {
    final res = await _dio.get('/api/follows', options: _auth);
    return (res.data as List).map((e) => Follow.fromJson(e)).toList();
  }

  Future<void> follow(String type, int id) async {
    await _dio.post('/api/follows', data: {
      'target_type': type,
      'target_id': id,
    }, options: _auth);
  }

  Future<void> unfollow(String type, int id) async {
    await _dio.delete('/api/follows', data: {
      'target_type': type,
      'target_id': id,
    }, options: _auth);
  }

  Future<int> predict(int matchId, int winnerId) async {
    final res = await _dio.post('/api/predictions', data: {
      'match_id': matchId,
      'predicted_winner_id': winnerId,
    }, options: _auth);
    return res.data['fanPoints'] as int;
  }

  Future<List<LeaderboardEntry>> getLeaderboard() async {
    final res = await _dio.get('/api/predictions/leaderboard');
    return (res.data as List).map((e) => LeaderboardEntry.fromJson(e)).toList();
  }

  Future<FanPointsInfo> getFanPoints() async {
    final res = await _dio.get('/api/fan-points', options: _auth);
    return FanPointsInfo.fromJson(res.data);
  }

  Future<List<Feed>> getFeeds({List<int>? teamIds}) async {
    final res = await _dio.get('/api/feeds', queryParameters: {
      if (teamIds != null && teamIds.isNotEmpty)
        'team_ids': teamIds.join(','),
    });
    return (res.data as List).map((e) => Feed.fromJson(e)).toList();
  }

  Future<List<Merch>> getMerch() async {
    final res = await _dio.get('/api/merch');
    return (res.data as List).map((e) => Merch.fromJson(e)).toList();
  }

  Future<Merch> getMerchItem(int id) async {
    final res = await _dio.get('/api/merch/$id');
    return Merch.fromJson(res.data);
  }

  Future<List<Order>> getOrders() async {
    final res = await _dio.get('/api/orders', options: _auth);
    return (res.data as List).map((e) => Order.fromJson(e)).toList();
  }

  Future<void> createOrder(int merchId, {int quantity = 1}) async {
    await _dio.post('/api/orders', data: {
      'merch_id': merchId,
      'quantity': quantity,
    }, options: _auth);
  }

  Future<List<Badge>> getBadges() async {
    final res = await _dio.get('/api/badges', options: _auth);
    return (res.data as List).map((e) => Badge.fromJson(e)).toList();
  }

  Future<List<TicketEvent>> getTickets() async {
    final res = await _dio.get('/api/tickets/events');
    return (res.data as List).map((e) => TicketEvent.fromJson(e)).toList();
  }

  Future<List<NotificationItem>> getNotifications() async {
    final res = await _dio.get('/api/notifications', options: _auth);
    return (res.data as List)
        .map((e) => NotificationItem.fromJson(e))
        .toList();
  }
}
