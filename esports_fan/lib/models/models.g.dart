// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  game: json['game'] as String,
  region: json['region'] as String,
  winRate: (json['win_rate'] as num).toDouble(),
  logoColor: json['logo_color'] as String,
  roster: (json['roster'] as List<dynamic>?)
      ?.map((e) => Player.fromJson(e as Map<String, dynamic>))
      .toList(),
  followed: json['followed'] as bool?,
);

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'game': instance.game,
      'region': instance.region,
      'win_rate': instance.winRate,
      'logo_color': instance.logoColor,
      'roster': instance.roster,
      'followed': instance.followed,
    };

_$PlayerImpl _$$PlayerImplFromJson(Map<String, dynamic> json) => _$PlayerImpl(
  id: (json['id'] as num).toInt(),
  teamId: (json['team_id'] as num).toInt(),
  name: json['name'] as String,
  role: json['role'] as String,
  kda: (json['kda'] as num).toDouble(),
  csPerMin: (json['cs_per_min'] as num).toDouble(),
  visionScore: (json['vision_score'] as num).toDouble(),
  damageShare: (json['damage_share'] as num).toDouble(),
  teamfight: (json['teamfight'] as num).toDouble(),
  consistency: (json['consistency'] as num).toDouble(),
  team: json['team'] == null
      ? null
      : Team.fromJson(json['team'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PlayerImplToJson(_$PlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team_id': instance.teamId,
      'name': instance.name,
      'role': instance.role,
      'kda': instance.kda,
      'cs_per_min': instance.csPerMin,
      'vision_score': instance.visionScore,
      'damage_share': instance.damageShare,
      'teamfight': instance.teamfight,
      'consistency': instance.consistency,
      'team': instance.team,
    };

_$MatchImpl _$$MatchImplFromJson(Map<String, dynamic> json) => _$MatchImpl(
  id: (json['id'] as num).toInt(),
  game: json['game'] as String,
  tournament: json['tournament'] as String,
  teamAId: (json['team_a_id'] as num).toInt(),
  teamBId: (json['team_b_id'] as num).toInt(),
  startTime: json['start_time'] as String,
  status: json['status'] as String,
  boFormat: (json['bo_format'] as num).toInt(),
  scoreA: (json['score_a'] as num).toInt(),
  scoreB: (json['score_b'] as num).toInt(),
  winnerId: (json['winner_id'] as num?)?.toInt(),
  teamA: json['team_a'] == null
      ? null
      : Team.fromJson(json['team_a'] as Map<String, dynamic>),
  teamB: json['team_b'] == null
      ? null
      : Team.fromJson(json['team_b'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$MatchImplToJson(_$MatchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'game': instance.game,
      'tournament': instance.tournament,
      'team_a_id': instance.teamAId,
      'team_b_id': instance.teamBId,
      'start_time': instance.startTime,
      'status': instance.status,
      'bo_format': instance.boFormat,
      'score_a': instance.scoreA,
      'score_b': instance.scoreB,
      'winner_id': instance.winnerId,
      'team_a': instance.teamA,
      'team_b': instance.teamB,
    };

_$FeedImpl _$$FeedImplFromJson(Map<String, dynamic> json) => _$FeedImpl(
  id: (json['id'] as num).toInt(),
  teamId: (json['team_id'] as num).toInt(),
  title: json['title'] as String,
  content: json['content'] as String,
  createdAt: json['created_at'] as String,
  teamName: json['team_name'] as String?,
);

Map<String, dynamic> _$$FeedImplToJson(_$FeedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team_id': instance.teamId,
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt,
      'team_name': instance.teamName,
    };

_$MerchImpl _$$MerchImplFromJson(Map<String, dynamic> json) => _$MerchImpl(
  id: (json['id'] as num).toInt(),
  teamId: (json['team_id'] as num?)?.toInt(),
  name: json['name'] as String,
  price: (json['price'] as num).toInt(),
  description: json['description'] as String?,
  stock: (json['stock'] as num).toInt(),
  teamName: json['team_name'] as String?,
);

Map<String, dynamic> _$$MerchImplToJson(_$MerchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team_id': instance.teamId,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'stock': instance.stock,
      'team_name': instance.teamName,
    };

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
  id: (json['id'] as num).toInt(),
  merchId: (json['merch_id'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  totalPrice: (json['total_price'] as num).toInt(),
  status: json['status'] as String,
  createdAt: json['created_at'] as String,
  merchName: json['merch_name'] as String?,
);

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merch_id': instance.merchId,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'created_at': instance.createdAt,
      'merch_name': instance.merchName,
    };

_$BadgeImpl _$$BadgeImplFromJson(Map<String, dynamic> json) => _$BadgeImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  icon: json['icon'] as String,
  requirement: json['requirement'] as String?,
  earned: json['earned'] as bool?,
  earnedAt: json['earned_at'] as String?,
);

Map<String, dynamic> _$$BadgeImplToJson(_$BadgeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'requirement': instance.requirement,
      'earned': instance.earned,
      'earned_at': instance.earnedAt,
    };

_$TicketEventImpl _$$TicketEventImplFromJson(Map<String, dynamic> json) =>
    _$TicketEventImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      venue: json['venue'] as String,
      eventDate: json['event_date'] as String,
      price: (json['price'] as num).toInt(),
      teamId: (json['team_id'] as num?)?.toInt(),
      capacity: (json['capacity'] as num).toInt(),
      teamName: json['team_name'] as String?,
    );

Map<String, dynamic> _$$TicketEventImplToJson(_$TicketEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'venue': instance.venue,
      'event_date': instance.eventDate,
      'price': instance.price,
      'team_id': instance.teamId,
      'capacity': instance.capacity,
      'team_name': instance.teamName,
    };

_$NotificationItemImpl _$$NotificationItemImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationItemImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  body: json['body'] as String,
  read: (json['read'] as num).toInt(),
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$$NotificationItemImplToJson(
  _$NotificationItemImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'read': instance.read,
  'created_at': instance.createdAt,
};

_$LeaderboardEntryImpl _$$LeaderboardEntryImplFromJson(
  Map<String, dynamic> json,
) => _$LeaderboardEntryImpl(
  displayName: json['display_name'] as String,
  fanPoints: (json['fan_points'] as num).toInt(),
  correctCount: (json['correct_count'] as num).toInt(),
  totalPredictions: (json['total_predictions'] as num).toInt(),
);

Map<String, dynamic> _$$LeaderboardEntryImplToJson(
  _$LeaderboardEntryImpl instance,
) => <String, dynamic>{
  'display_name': instance.displayName,
  'fan_points': instance.fanPoints,
  'correct_count': instance.correctCount,
  'total_predictions': instance.totalPredictions,
};

_$FanPointsInfoImpl _$$FanPointsInfoImplFromJson(Map<String, dynamic> json) =>
    _$FanPointsInfoImpl(
      points: (json['points'] as num).toInt(),
      displayName: json['displayName'] as String?,
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$FanPointsInfoImplToJson(_$FanPointsInfoImpl instance) =>
    <String, dynamic>{
      'points': instance.points,
      'displayName': instance.displayName,
      'history': instance.history,
    };

_$FollowImpl _$$FollowImplFromJson(Map<String, dynamic> json) => _$FollowImpl(
  id: (json['id'] as num).toInt(),
  targetType: json['target_type'] as String,
  targetId: (json['target_id'] as num).toInt(),
  target: json['target'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$FollowImplToJson(_$FollowImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'target_type': instance.targetType,
      'target_id': instance.targetId,
      'target': instance.target,
    };
