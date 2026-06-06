import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Team with _$Team {
  const factory Team({
    required int id,
    required String name,
    required String game,
    required String region,
    @JsonKey(name: 'win_rate') required double winRate,
    @JsonKey(name: 'logo_color') required String logoColor,
    List<Player>? roster,
    bool? followed,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Player with _$Player {
  const factory Player({
    required int id,
    @JsonKey(name: 'team_id') required int teamId,
    required String name,
    required String role,
    required double kda,
    @JsonKey(name: 'cs_per_min') required double csPerMin,
    @JsonKey(name: 'vision_score') required double visionScore,
    @JsonKey(name: 'damage_share') required double damageShare,
    required double teamfight,
    required double consistency,
    Team? team,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class Match with _$Match {
  const factory Match({
    required int id,
    required String game,
    required String tournament,
    @JsonKey(name: 'team_a_id') required int teamAId,
    @JsonKey(name: 'team_b_id') required int teamBId,
    @JsonKey(name: 'start_time') required String startTime,
    required String status,
    @JsonKey(name: 'bo_format') required int boFormat,
    @JsonKey(name: 'score_a') required int scoreA,
    @JsonKey(name: 'score_b') required int scoreB,
    @JsonKey(name: 'winner_id') int? winnerId,
    @JsonKey(name: 'team_a') Team? teamA,
    @JsonKey(name: 'team_b') Team? teamB,
  }) = _Match;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
}

@freezed
class Feed with _$Feed {
  const factory Feed({
    required int id,
    @JsonKey(name: 'team_id') required int teamId,
    required String title,
    required String content,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'team_name') String? teamName,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}

@freezed
class Merch with _$Merch {
  const factory Merch({
    required int id,
    @JsonKey(name: 'team_id') int? teamId,
    required String name,
    required int price,
    String? description,
    required int stock,
    @JsonKey(name: 'team_name') String? teamName,
  }) = _Merch;

  factory Merch.fromJson(Map<String, dynamic> json) => _$MerchFromJson(json);
}

@freezed
class Order with _$Order {
  const factory Order({
    required int id,
    @JsonKey(name: 'merch_id') required int merchId,
    required int quantity,
    @JsonKey(name: 'total_price') required int totalPrice,
    required String status,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'merch_name') String? merchName,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class Badge with _$Badge {
  const factory Badge({
    required int id,
    required String name,
    required String description,
    required String icon,
    String? requirement,
    bool? earned,
    @JsonKey(name: 'earned_at') String? earnedAt,
  }) = _Badge;

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
}

@freezed
class TicketEvent with _$TicketEvent {
  const factory TicketEvent({
    required int id,
    required String title,
    required String venue,
    @JsonKey(name: 'event_date') required String eventDate,
    required int price,
    @JsonKey(name: 'team_id') int? teamId,
    required int capacity,
    @JsonKey(name: 'team_name') String? teamName,
  }) = _TicketEvent;

  factory TicketEvent.fromJson(Map<String, dynamic> json) =>
      _$TicketEventFromJson(json);
}

@freezed
class NotificationItem with _$NotificationItem {
  const factory NotificationItem({
    required int id,
    required String title,
    required String body,
    required int read,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _NotificationItem;

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);
}

@freezed
class LeaderboardEntry with _$LeaderboardEntry {
  const factory LeaderboardEntry({
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'fan_points') required int fanPoints,
    @JsonKey(name: 'correct_count') required int correctCount,
    @JsonKey(name: 'total_predictions') required int totalPredictions,
  }) = _LeaderboardEntry;

  factory LeaderboardEntry.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardEntryFromJson(json);
}

@freezed
class FanPointsInfo with _$FanPointsInfo {
  const factory FanPointsInfo({
    required int points,
    @JsonKey(name: 'displayName') String? displayName,
    List<Map<String, dynamic>>? history,
  }) = _FanPointsInfo;

  factory FanPointsInfo.fromJson(Map<String, dynamic> json) =>
      _$FanPointsInfoFromJson(json);
}

@freezed
class Follow with _$Follow {
  const factory Follow({
    required int id,
    @JsonKey(name: 'target_type') required String targetType,
    @JsonKey(name: 'target_id') required int targetId,
    Map<String, dynamic>? target,
  }) = _Follow;

  factory Follow.fromJson(Map<String, dynamic> json) => _$FollowFromJson(json);
}
