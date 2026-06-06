// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get game => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'win_rate')
  double get winRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_color')
  String get logoColor => throw _privateConstructorUsedError;
  List<Player>? get roster => throw _privateConstructorUsedError;
  bool? get followed => throw _privateConstructorUsedError;

  /// Serializes this Team to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Team
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({
    int id,
    String name,
    String game,
    String region,
    @JsonKey(name: 'win_rate') double winRate,
    @JsonKey(name: 'logo_color') String logoColor,
    List<Player>? roster,
    bool? followed,
  });
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Team
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? game = null,
    Object? region = null,
    Object? winRate = null,
    Object? logoColor = null,
    Object? roster = freezed,
    Object? followed = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            game: null == game
                ? _value.game
                : game // ignore: cast_nullable_to_non_nullable
                      as String,
            region: null == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                      as String,
            winRate: null == winRate
                ? _value.winRate
                : winRate // ignore: cast_nullable_to_non_nullable
                      as double,
            logoColor: null == logoColor
                ? _value.logoColor
                : logoColor // ignore: cast_nullable_to_non_nullable
                      as String,
            roster: freezed == roster
                ? _value.roster
                : roster // ignore: cast_nullable_to_non_nullable
                      as List<Player>?,
            followed: freezed == followed
                ? _value.followed
                : followed // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TeamImplCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$TeamImplCopyWith(
    _$TeamImpl value,
    $Res Function(_$TeamImpl) then,
  ) = __$$TeamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String game,
    String region,
    @JsonKey(name: 'win_rate') double winRate,
    @JsonKey(name: 'logo_color') String logoColor,
    List<Player>? roster,
    bool? followed,
  });
}

/// @nodoc
class __$$TeamImplCopyWithImpl<$Res>
    extends _$TeamCopyWithImpl<$Res, _$TeamImpl>
    implements _$$TeamImplCopyWith<$Res> {
  __$$TeamImplCopyWithImpl(_$TeamImpl _value, $Res Function(_$TeamImpl) _then)
    : super(_value, _then);

  /// Create a copy of Team
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? game = null,
    Object? region = null,
    Object? winRate = null,
    Object? logoColor = null,
    Object? roster = freezed,
    Object? followed = freezed,
  }) {
    return _then(
      _$TeamImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        game: null == game
            ? _value.game
            : game // ignore: cast_nullable_to_non_nullable
                  as String,
        region: null == region
            ? _value.region
            : region // ignore: cast_nullable_to_non_nullable
                  as String,
        winRate: null == winRate
            ? _value.winRate
            : winRate // ignore: cast_nullable_to_non_nullable
                  as double,
        logoColor: null == logoColor
            ? _value.logoColor
            : logoColor // ignore: cast_nullable_to_non_nullable
                  as String,
        roster: freezed == roster
            ? _value._roster
            : roster // ignore: cast_nullable_to_non_nullable
                  as List<Player>?,
        followed: freezed == followed
            ? _value.followed
            : followed // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamImpl implements _Team {
  const _$TeamImpl({
    required this.id,
    required this.name,
    required this.game,
    required this.region,
    @JsonKey(name: 'win_rate') required this.winRate,
    @JsonKey(name: 'logo_color') required this.logoColor,
    final List<Player>? roster,
    this.followed,
  }) : _roster = roster;

  factory _$TeamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String game;
  @override
  final String region;
  @override
  @JsonKey(name: 'win_rate')
  final double winRate;
  @override
  @JsonKey(name: 'logo_color')
  final String logoColor;
  final List<Player>? _roster;
  @override
  List<Player>? get roster {
    final value = _roster;
    if (value == null) return null;
    if (_roster is EqualUnmodifiableListView) return _roster;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? followed;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, game: $game, region: $region, winRate: $winRate, logoColor: $logoColor, roster: $roster, followed: $followed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.winRate, winRate) || other.winRate == winRate) &&
            (identical(other.logoColor, logoColor) ||
                other.logoColor == logoColor) &&
            const DeepCollectionEquality().equals(other._roster, _roster) &&
            (identical(other.followed, followed) ||
                other.followed == followed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    game,
    region,
    winRate,
    logoColor,
    const DeepCollectionEquality().hash(_roster),
    followed,
  );

  /// Create a copy of Team
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      __$$TeamImplCopyWithImpl<_$TeamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamImplToJson(this);
  }
}

abstract class _Team implements Team {
  const factory _Team({
    required final int id,
    required final String name,
    required final String game,
    required final String region,
    @JsonKey(name: 'win_rate') required final double winRate,
    @JsonKey(name: 'logo_color') required final String logoColor,
    final List<Player>? roster,
    final bool? followed,
  }) = _$TeamImpl;

  factory _Team.fromJson(Map<String, dynamic> json) = _$TeamImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get game;
  @override
  String get region;
  @override
  @JsonKey(name: 'win_rate')
  double get winRate;
  @override
  @JsonKey(name: 'logo_color')
  String get logoColor;
  @override
  List<Player>? get roster;
  @override
  bool? get followed;

  /// Create a copy of Team
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamImplCopyWith<_$TeamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return _Player.fromJson(json);
}

/// @nodoc
mixin _$Player {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  int get teamId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  double get kda => throw _privateConstructorUsedError;
  @JsonKey(name: 'cs_per_min')
  double get csPerMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'vision_score')
  double get visionScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'damage_share')
  double get damageShare => throw _privateConstructorUsedError;
  double get teamfight => throw _privateConstructorUsedError;
  double get consistency => throw _privateConstructorUsedError;
  Team? get team => throw _privateConstructorUsedError;

  /// Serializes this Player to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerCopyWith<Player> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerCopyWith<$Res> {
  factory $PlayerCopyWith(Player value, $Res Function(Player) then) =
      _$PlayerCopyWithImpl<$Res, Player>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'team_id') int teamId,
    String name,
    String role,
    double kda,
    @JsonKey(name: 'cs_per_min') double csPerMin,
    @JsonKey(name: 'vision_score') double visionScore,
    @JsonKey(name: 'damage_share') double damageShare,
    double teamfight,
    double consistency,
    Team? team,
  });

  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$PlayerCopyWithImpl<$Res, $Val extends Player>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamId = null,
    Object? name = null,
    Object? role = null,
    Object? kda = null,
    Object? csPerMin = null,
    Object? visionScore = null,
    Object? damageShare = null,
    Object? teamfight = null,
    Object? consistency = null,
    Object? team = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            teamId: null == teamId
                ? _value.teamId
                : teamId // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            kda: null == kda
                ? _value.kda
                : kda // ignore: cast_nullable_to_non_nullable
                      as double,
            csPerMin: null == csPerMin
                ? _value.csPerMin
                : csPerMin // ignore: cast_nullable_to_non_nullable
                      as double,
            visionScore: null == visionScore
                ? _value.visionScore
                : visionScore // ignore: cast_nullable_to_non_nullable
                      as double,
            damageShare: null == damageShare
                ? _value.damageShare
                : damageShare // ignore: cast_nullable_to_non_nullable
                      as double,
            teamfight: null == teamfight
                ? _value.teamfight
                : teamfight // ignore: cast_nullable_to_non_nullable
                      as double,
            consistency: null == consistency
                ? _value.consistency
                : consistency // ignore: cast_nullable_to_non_nullable
                      as double,
            team: freezed == team
                ? _value.team
                : team // ignore: cast_nullable_to_non_nullable
                      as Team?,
          )
          as $Val,
    );
  }

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerImplCopyWith<$Res> implements $PlayerCopyWith<$Res> {
  factory _$$PlayerImplCopyWith(
    _$PlayerImpl value,
    $Res Function(_$PlayerImpl) then,
  ) = __$$PlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'team_id') int teamId,
    String name,
    String role,
    double kda,
    @JsonKey(name: 'cs_per_min') double csPerMin,
    @JsonKey(name: 'vision_score') double visionScore,
    @JsonKey(name: 'damage_share') double damageShare,
    double teamfight,
    double consistency,
    Team? team,
  });

  @override
  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$PlayerImplCopyWithImpl<$Res>
    extends _$PlayerCopyWithImpl<$Res, _$PlayerImpl>
    implements _$$PlayerImplCopyWith<$Res> {
  __$$PlayerImplCopyWithImpl(
    _$PlayerImpl _value,
    $Res Function(_$PlayerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamId = null,
    Object? name = null,
    Object? role = null,
    Object? kda = null,
    Object? csPerMin = null,
    Object? visionScore = null,
    Object? damageShare = null,
    Object? teamfight = null,
    Object? consistency = null,
    Object? team = freezed,
  }) {
    return _then(
      _$PlayerImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        teamId: null == teamId
            ? _value.teamId
            : teamId // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        kda: null == kda
            ? _value.kda
            : kda // ignore: cast_nullable_to_non_nullable
                  as double,
        csPerMin: null == csPerMin
            ? _value.csPerMin
            : csPerMin // ignore: cast_nullable_to_non_nullable
                  as double,
        visionScore: null == visionScore
            ? _value.visionScore
            : visionScore // ignore: cast_nullable_to_non_nullable
                  as double,
        damageShare: null == damageShare
            ? _value.damageShare
            : damageShare // ignore: cast_nullable_to_non_nullable
                  as double,
        teamfight: null == teamfight
            ? _value.teamfight
            : teamfight // ignore: cast_nullable_to_non_nullable
                  as double,
        consistency: null == consistency
            ? _value.consistency
            : consistency // ignore: cast_nullable_to_non_nullable
                  as double,
        team: freezed == team
            ? _value.team
            : team // ignore: cast_nullable_to_non_nullable
                  as Team?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerImpl implements _Player {
  const _$PlayerImpl({
    required this.id,
    @JsonKey(name: 'team_id') required this.teamId,
    required this.name,
    required this.role,
    required this.kda,
    @JsonKey(name: 'cs_per_min') required this.csPerMin,
    @JsonKey(name: 'vision_score') required this.visionScore,
    @JsonKey(name: 'damage_share') required this.damageShare,
    required this.teamfight,
    required this.consistency,
    this.team,
  });

  factory _$PlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'team_id')
  final int teamId;
  @override
  final String name;
  @override
  final String role;
  @override
  final double kda;
  @override
  @JsonKey(name: 'cs_per_min')
  final double csPerMin;
  @override
  @JsonKey(name: 'vision_score')
  final double visionScore;
  @override
  @JsonKey(name: 'damage_share')
  final double damageShare;
  @override
  final double teamfight;
  @override
  final double consistency;
  @override
  final Team? team;

  @override
  String toString() {
    return 'Player(id: $id, teamId: $teamId, name: $name, role: $role, kda: $kda, csPerMin: $csPerMin, visionScore: $visionScore, damageShare: $damageShare, teamfight: $teamfight, consistency: $consistency, team: $team)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.kda, kda) || other.kda == kda) &&
            (identical(other.csPerMin, csPerMin) ||
                other.csPerMin == csPerMin) &&
            (identical(other.visionScore, visionScore) ||
                other.visionScore == visionScore) &&
            (identical(other.damageShare, damageShare) ||
                other.damageShare == damageShare) &&
            (identical(other.teamfight, teamfight) ||
                other.teamfight == teamfight) &&
            (identical(other.consistency, consistency) ||
                other.consistency == consistency) &&
            (identical(other.team, team) || other.team == team));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    teamId,
    name,
    role,
    kda,
    csPerMin,
    visionScore,
    damageShare,
    teamfight,
    consistency,
    team,
  );

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      __$$PlayerImplCopyWithImpl<_$PlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerImplToJson(this);
  }
}

abstract class _Player implements Player {
  const factory _Player({
    required final int id,
    @JsonKey(name: 'team_id') required final int teamId,
    required final String name,
    required final String role,
    required final double kda,
    @JsonKey(name: 'cs_per_min') required final double csPerMin,
    @JsonKey(name: 'vision_score') required final double visionScore,
    @JsonKey(name: 'damage_share') required final double damageShare,
    required final double teamfight,
    required final double consistency,
    final Team? team,
  }) = _$PlayerImpl;

  factory _Player.fromJson(Map<String, dynamic> json) = _$PlayerImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'team_id')
  int get teamId;
  @override
  String get name;
  @override
  String get role;
  @override
  double get kda;
  @override
  @JsonKey(name: 'cs_per_min')
  double get csPerMin;
  @override
  @JsonKey(name: 'vision_score')
  double get visionScore;
  @override
  @JsonKey(name: 'damage_share')
  double get damageShare;
  @override
  double get teamfight;
  @override
  double get consistency;
  @override
  Team? get team;

  /// Create a copy of Player
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerImplCopyWith<_$PlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Match _$MatchFromJson(Map<String, dynamic> json) {
  return _Match.fromJson(json);
}

/// @nodoc
mixin _$Match {
  int get id => throw _privateConstructorUsedError;
  String get game => throw _privateConstructorUsedError;
  String get tournament => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_a_id')
  int get teamAId => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_b_id')
  int get teamBId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'bo_format')
  int get boFormat => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_a')
  int get scoreA => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_b')
  int get scoreB => throw _privateConstructorUsedError;
  @JsonKey(name: 'winner_id')
  int? get winnerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_a')
  Team? get teamA => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_b')
  Team? get teamB => throw _privateConstructorUsedError;

  /// Serializes this Match to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Match
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchCopyWith<Match> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchCopyWith<$Res> {
  factory $MatchCopyWith(Match value, $Res Function(Match) then) =
      _$MatchCopyWithImpl<$Res, Match>;
  @useResult
  $Res call({
    int id,
    String game,
    String tournament,
    @JsonKey(name: 'team_a_id') int teamAId,
    @JsonKey(name: 'team_b_id') int teamBId,
    @JsonKey(name: 'start_time') String startTime,
    String status,
    @JsonKey(name: 'bo_format') int boFormat,
    @JsonKey(name: 'score_a') int scoreA,
    @JsonKey(name: 'score_b') int scoreB,
    @JsonKey(name: 'winner_id') int? winnerId,
    @JsonKey(name: 'team_a') Team? teamA,
    @JsonKey(name: 'team_b') Team? teamB,
  });

  $TeamCopyWith<$Res>? get teamA;
  $TeamCopyWith<$Res>? get teamB;
}

/// @nodoc
class _$MatchCopyWithImpl<$Res, $Val extends Match>
    implements $MatchCopyWith<$Res> {
  _$MatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Match
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? game = null,
    Object? tournament = null,
    Object? teamAId = null,
    Object? teamBId = null,
    Object? startTime = null,
    Object? status = null,
    Object? boFormat = null,
    Object? scoreA = null,
    Object? scoreB = null,
    Object? winnerId = freezed,
    Object? teamA = freezed,
    Object? teamB = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            game: null == game
                ? _value.game
                : game // ignore: cast_nullable_to_non_nullable
                      as String,
            tournament: null == tournament
                ? _value.tournament
                : tournament // ignore: cast_nullable_to_non_nullable
                      as String,
            teamAId: null == teamAId
                ? _value.teamAId
                : teamAId // ignore: cast_nullable_to_non_nullable
                      as int,
            teamBId: null == teamBId
                ? _value.teamBId
                : teamBId // ignore: cast_nullable_to_non_nullable
                      as int,
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            boFormat: null == boFormat
                ? _value.boFormat
                : boFormat // ignore: cast_nullable_to_non_nullable
                      as int,
            scoreA: null == scoreA
                ? _value.scoreA
                : scoreA // ignore: cast_nullable_to_non_nullable
                      as int,
            scoreB: null == scoreB
                ? _value.scoreB
                : scoreB // ignore: cast_nullable_to_non_nullable
                      as int,
            winnerId: freezed == winnerId
                ? _value.winnerId
                : winnerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            teamA: freezed == teamA
                ? _value.teamA
                : teamA // ignore: cast_nullable_to_non_nullable
                      as Team?,
            teamB: freezed == teamB
                ? _value.teamB
                : teamB // ignore: cast_nullable_to_non_nullable
                      as Team?,
          )
          as $Val,
    );
  }

  /// Create a copy of Match
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get teamA {
    if (_value.teamA == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.teamA!, (value) {
      return _then(_value.copyWith(teamA: value) as $Val);
    });
  }

  /// Create a copy of Match
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get teamB {
    if (_value.teamB == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.teamB!, (value) {
      return _then(_value.copyWith(teamB: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchImplCopyWith<$Res> implements $MatchCopyWith<$Res> {
  factory _$$MatchImplCopyWith(
    _$MatchImpl value,
    $Res Function(_$MatchImpl) then,
  ) = __$$MatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String game,
    String tournament,
    @JsonKey(name: 'team_a_id') int teamAId,
    @JsonKey(name: 'team_b_id') int teamBId,
    @JsonKey(name: 'start_time') String startTime,
    String status,
    @JsonKey(name: 'bo_format') int boFormat,
    @JsonKey(name: 'score_a') int scoreA,
    @JsonKey(name: 'score_b') int scoreB,
    @JsonKey(name: 'winner_id') int? winnerId,
    @JsonKey(name: 'team_a') Team? teamA,
    @JsonKey(name: 'team_b') Team? teamB,
  });

  @override
  $TeamCopyWith<$Res>? get teamA;
  @override
  $TeamCopyWith<$Res>? get teamB;
}

/// @nodoc
class __$$MatchImplCopyWithImpl<$Res>
    extends _$MatchCopyWithImpl<$Res, _$MatchImpl>
    implements _$$MatchImplCopyWith<$Res> {
  __$$MatchImplCopyWithImpl(
    _$MatchImpl _value,
    $Res Function(_$MatchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Match
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? game = null,
    Object? tournament = null,
    Object? teamAId = null,
    Object? teamBId = null,
    Object? startTime = null,
    Object? status = null,
    Object? boFormat = null,
    Object? scoreA = null,
    Object? scoreB = null,
    Object? winnerId = freezed,
    Object? teamA = freezed,
    Object? teamB = freezed,
  }) {
    return _then(
      _$MatchImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        game: null == game
            ? _value.game
            : game // ignore: cast_nullable_to_non_nullable
                  as String,
        tournament: null == tournament
            ? _value.tournament
            : tournament // ignore: cast_nullable_to_non_nullable
                  as String,
        teamAId: null == teamAId
            ? _value.teamAId
            : teamAId // ignore: cast_nullable_to_non_nullable
                  as int,
        teamBId: null == teamBId
            ? _value.teamBId
            : teamBId // ignore: cast_nullable_to_non_nullable
                  as int,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        boFormat: null == boFormat
            ? _value.boFormat
            : boFormat // ignore: cast_nullable_to_non_nullable
                  as int,
        scoreA: null == scoreA
            ? _value.scoreA
            : scoreA // ignore: cast_nullable_to_non_nullable
                  as int,
        scoreB: null == scoreB
            ? _value.scoreB
            : scoreB // ignore: cast_nullable_to_non_nullable
                  as int,
        winnerId: freezed == winnerId
            ? _value.winnerId
            : winnerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        teamA: freezed == teamA
            ? _value.teamA
            : teamA // ignore: cast_nullable_to_non_nullable
                  as Team?,
        teamB: freezed == teamB
            ? _value.teamB
            : teamB // ignore: cast_nullable_to_non_nullable
                  as Team?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchImpl implements _Match {
  const _$MatchImpl({
    required this.id,
    required this.game,
    required this.tournament,
    @JsonKey(name: 'team_a_id') required this.teamAId,
    @JsonKey(name: 'team_b_id') required this.teamBId,
    @JsonKey(name: 'start_time') required this.startTime,
    required this.status,
    @JsonKey(name: 'bo_format') required this.boFormat,
    @JsonKey(name: 'score_a') required this.scoreA,
    @JsonKey(name: 'score_b') required this.scoreB,
    @JsonKey(name: 'winner_id') this.winnerId,
    @JsonKey(name: 'team_a') this.teamA,
    @JsonKey(name: 'team_b') this.teamB,
  });

  factory _$MatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchImplFromJson(json);

  @override
  final int id;
  @override
  final String game;
  @override
  final String tournament;
  @override
  @JsonKey(name: 'team_a_id')
  final int teamAId;
  @override
  @JsonKey(name: 'team_b_id')
  final int teamBId;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  final String status;
  @override
  @JsonKey(name: 'bo_format')
  final int boFormat;
  @override
  @JsonKey(name: 'score_a')
  final int scoreA;
  @override
  @JsonKey(name: 'score_b')
  final int scoreB;
  @override
  @JsonKey(name: 'winner_id')
  final int? winnerId;
  @override
  @JsonKey(name: 'team_a')
  final Team? teamA;
  @override
  @JsonKey(name: 'team_b')
  final Team? teamB;

  @override
  String toString() {
    return 'Match(id: $id, game: $game, tournament: $tournament, teamAId: $teamAId, teamBId: $teamBId, startTime: $startTime, status: $status, boFormat: $boFormat, scoreA: $scoreA, scoreB: $scoreB, winnerId: $winnerId, teamA: $teamA, teamB: $teamB)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.game, game) || other.game == game) &&
            (identical(other.tournament, tournament) ||
                other.tournament == tournament) &&
            (identical(other.teamAId, teamAId) || other.teamAId == teamAId) &&
            (identical(other.teamBId, teamBId) || other.teamBId == teamBId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.boFormat, boFormat) ||
                other.boFormat == boFormat) &&
            (identical(other.scoreA, scoreA) || other.scoreA == scoreA) &&
            (identical(other.scoreB, scoreB) || other.scoreB == scoreB) &&
            (identical(other.winnerId, winnerId) ||
                other.winnerId == winnerId) &&
            (identical(other.teamA, teamA) || other.teamA == teamA) &&
            (identical(other.teamB, teamB) || other.teamB == teamB));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    game,
    tournament,
    teamAId,
    teamBId,
    startTime,
    status,
    boFormat,
    scoreA,
    scoreB,
    winnerId,
    teamA,
    teamB,
  );

  /// Create a copy of Match
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      __$$MatchImplCopyWithImpl<_$MatchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchImplToJson(this);
  }
}

abstract class _Match implements Match {
  const factory _Match({
    required final int id,
    required final String game,
    required final String tournament,
    @JsonKey(name: 'team_a_id') required final int teamAId,
    @JsonKey(name: 'team_b_id') required final int teamBId,
    @JsonKey(name: 'start_time') required final String startTime,
    required final String status,
    @JsonKey(name: 'bo_format') required final int boFormat,
    @JsonKey(name: 'score_a') required final int scoreA,
    @JsonKey(name: 'score_b') required final int scoreB,
    @JsonKey(name: 'winner_id') final int? winnerId,
    @JsonKey(name: 'team_a') final Team? teamA,
    @JsonKey(name: 'team_b') final Team? teamB,
  }) = _$MatchImpl;

  factory _Match.fromJson(Map<String, dynamic> json) = _$MatchImpl.fromJson;

  @override
  int get id;
  @override
  String get game;
  @override
  String get tournament;
  @override
  @JsonKey(name: 'team_a_id')
  int get teamAId;
  @override
  @JsonKey(name: 'team_b_id')
  int get teamBId;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  String get status;
  @override
  @JsonKey(name: 'bo_format')
  int get boFormat;
  @override
  @JsonKey(name: 'score_a')
  int get scoreA;
  @override
  @JsonKey(name: 'score_b')
  int get scoreB;
  @override
  @JsonKey(name: 'winner_id')
  int? get winnerId;
  @override
  @JsonKey(name: 'team_a')
  Team? get teamA;
  @override
  @JsonKey(name: 'team_b')
  Team? get teamB;

  /// Create a copy of Match
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchImplCopyWith<_$MatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
mixin _$Feed {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  int get teamId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_name')
  String? get teamName => throw _privateConstructorUsedError;

  /// Serializes this Feed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res, Feed>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'team_id') int teamId,
    String title,
    String content,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'team_name') String? teamName,
  });
}

/// @nodoc
class _$FeedCopyWithImpl<$Res, $Val extends Feed>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamId = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? teamName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            teamId: null == teamId
                ? _value.teamId
                : teamId // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            teamName: freezed == teamName
                ? _value.teamName
                : teamName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedImplCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$FeedImplCopyWith(
    _$FeedImpl value,
    $Res Function(_$FeedImpl) then,
  ) = __$$FeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'team_id') int teamId,
    String title,
    String content,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'team_name') String? teamName,
  });
}

/// @nodoc
class __$$FeedImplCopyWithImpl<$Res>
    extends _$FeedCopyWithImpl<$Res, _$FeedImpl>
    implements _$$FeedImplCopyWith<$Res> {
  __$$FeedImplCopyWithImpl(_$FeedImpl _value, $Res Function(_$FeedImpl) _then)
    : super(_value, _then);

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamId = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? teamName = freezed,
  }) {
    return _then(
      _$FeedImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        teamId: null == teamId
            ? _value.teamId
            : teamId // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        teamName: freezed == teamName
            ? _value.teamName
            : teamName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedImpl implements _Feed {
  const _$FeedImpl({
    required this.id,
    @JsonKey(name: 'team_id') required this.teamId,
    required this.title,
    required this.content,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'team_name') this.teamName,
  });

  factory _$FeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'team_id')
  final int teamId;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'team_name')
  final String? teamName;

  @override
  String toString() {
    return 'Feed(id: $id, teamId: $teamId, title: $title, content: $content, createdAt: $createdAt, teamName: $teamName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, teamId, title, content, createdAt, teamName);

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      __$$FeedImplCopyWithImpl<_$FeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedImplToJson(this);
  }
}

abstract class _Feed implements Feed {
  const factory _Feed({
    required final int id,
    @JsonKey(name: 'team_id') required final int teamId,
    required final String title,
    required final String content,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'team_name') final String? teamName,
  }) = _$FeedImpl;

  factory _Feed.fromJson(Map<String, dynamic> json) = _$FeedImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'team_id')
  int get teamId;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'team_name')
  String? get teamName;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Merch _$MerchFromJson(Map<String, dynamic> json) {
  return _Merch.fromJson(json);
}

/// @nodoc
mixin _$Merch {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  int? get teamId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_name')
  String? get teamName => throw _privateConstructorUsedError;

  /// Serializes this Merch to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Merch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerchCopyWith<Merch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchCopyWith<$Res> {
  factory $MerchCopyWith(Merch value, $Res Function(Merch) then) =
      _$MerchCopyWithImpl<$Res, Merch>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'team_id') int? teamId,
    String name,
    int price,
    String? description,
    int stock,
    @JsonKey(name: 'team_name') String? teamName,
  });
}

/// @nodoc
class _$MerchCopyWithImpl<$Res, $Val extends Merch>
    implements $MerchCopyWith<$Res> {
  _$MerchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Merch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamId = freezed,
    Object? name = null,
    Object? price = null,
    Object? description = freezed,
    Object? stock = null,
    Object? teamName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            teamId: freezed == teamId
                ? _value.teamId
                : teamId // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            stock: null == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                      as int,
            teamName: freezed == teamName
                ? _value.teamName
                : teamName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MerchImplCopyWith<$Res> implements $MerchCopyWith<$Res> {
  factory _$$MerchImplCopyWith(
    _$MerchImpl value,
    $Res Function(_$MerchImpl) then,
  ) = __$$MerchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'team_id') int? teamId,
    String name,
    int price,
    String? description,
    int stock,
    @JsonKey(name: 'team_name') String? teamName,
  });
}

/// @nodoc
class __$$MerchImplCopyWithImpl<$Res>
    extends _$MerchCopyWithImpl<$Res, _$MerchImpl>
    implements _$$MerchImplCopyWith<$Res> {
  __$$MerchImplCopyWithImpl(
    _$MerchImpl _value,
    $Res Function(_$MerchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Merch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? teamId = freezed,
    Object? name = null,
    Object? price = null,
    Object? description = freezed,
    Object? stock = null,
    Object? teamName = freezed,
  }) {
    return _then(
      _$MerchImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        teamId: freezed == teamId
            ? _value.teamId
            : teamId // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        stock: null == stock
            ? _value.stock
            : stock // ignore: cast_nullable_to_non_nullable
                  as int,
        teamName: freezed == teamName
            ? _value.teamName
            : teamName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchImpl implements _Merch {
  const _$MerchImpl({
    required this.id,
    @JsonKey(name: 'team_id') this.teamId,
    required this.name,
    required this.price,
    this.description,
    required this.stock,
    @JsonKey(name: 'team_name') this.teamName,
  });

  factory _$MerchImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'team_id')
  final int? teamId;
  @override
  final String name;
  @override
  final int price;
  @override
  final String? description;
  @override
  final int stock;
  @override
  @JsonKey(name: 'team_name')
  final String? teamName;

  @override
  String toString() {
    return 'Merch(id: $id, teamId: $teamId, name: $name, price: $price, description: $description, stock: $stock, teamName: $teamName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    teamId,
    name,
    price,
    description,
    stock,
    teamName,
  );

  /// Create a copy of Merch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchImplCopyWith<_$MerchImpl> get copyWith =>
      __$$MerchImplCopyWithImpl<_$MerchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchImplToJson(this);
  }
}

abstract class _Merch implements Merch {
  const factory _Merch({
    required final int id,
    @JsonKey(name: 'team_id') final int? teamId,
    required final String name,
    required final int price,
    final String? description,
    required final int stock,
    @JsonKey(name: 'team_name') final String? teamName,
  }) = _$MerchImpl;

  factory _Merch.fromJson(Map<String, dynamic> json) = _$MerchImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'team_id')
  int? get teamId;
  @override
  String get name;
  @override
  int get price;
  @override
  String? get description;
  @override
  int get stock;
  @override
  @JsonKey(name: 'team_name')
  String? get teamName;

  /// Create a copy of Merch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerchImplCopyWith<_$MerchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'merch_id')
  int get merchId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  int get totalPrice => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'merch_name')
  String? get merchName => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'merch_id') int merchId,
    int quantity,
    @JsonKey(name: 'total_price') int totalPrice,
    String status,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'merch_name') String? merchName,
  });
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? merchId = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? createdAt = null,
    Object? merchName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            merchId: null == merchId
                ? _value.merchId
                : merchId // ignore: cast_nullable_to_non_nullable
                      as int,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPrice: null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            merchName: freezed == merchName
                ? _value.merchName
                : merchName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
    _$OrderImpl value,
    $Res Function(_$OrderImpl) then,
  ) = __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'merch_id') int merchId,
    int quantity,
    @JsonKey(name: 'total_price') int totalPrice,
    String status,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'merch_name') String? merchName,
  });
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
    _$OrderImpl _value,
    $Res Function(_$OrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? merchId = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? createdAt = null,
    Object? merchName = freezed,
  }) {
    return _then(
      _$OrderImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        merchId: null == merchId
            ? _value.merchId
            : merchId // ignore: cast_nullable_to_non_nullable
                  as int,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPrice: null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        merchName: freezed == merchName
            ? _value.merchName
            : merchName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  const _$OrderImpl({
    required this.id,
    @JsonKey(name: 'merch_id') required this.merchId,
    required this.quantity,
    @JsonKey(name: 'total_price') required this.totalPrice,
    required this.status,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'merch_name') this.merchName,
  });

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'merch_id')
  final int merchId;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'total_price')
  final int totalPrice;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'merch_name')
  final String? merchName;

  @override
  String toString() {
    return 'Order(id: $id, merchId: $merchId, quantity: $quantity, totalPrice: $totalPrice, status: $status, createdAt: $createdAt, merchName: $merchName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.merchId, merchId) || other.merchId == merchId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.merchName, merchName) ||
                other.merchName == merchName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    merchId,
    quantity,
    totalPrice,
    status,
    createdAt,
    merchName,
  );

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(this);
  }
}

abstract class _Order implements Order {
  const factory _Order({
    required final int id,
    @JsonKey(name: 'merch_id') required final int merchId,
    required final int quantity,
    @JsonKey(name: 'total_price') required final int totalPrice,
    required final String status,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'merch_name') final String? merchName,
  }) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'merch_id')
  int get merchId;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'total_price')
  int get totalPrice;
  @override
  String get status;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'merch_name')
  String? get merchName;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return _Badge.fromJson(json);
}

/// @nodoc
mixin _$Badge {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String? get requirement => throw _privateConstructorUsedError;
  bool? get earned => throw _privateConstructorUsedError;
  @JsonKey(name: 'earned_at')
  String? get earnedAt => throw _privateConstructorUsedError;

  /// Serializes this Badge to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Badge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BadgeCopyWith<Badge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCopyWith<$Res> {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) then) =
      _$BadgeCopyWithImpl<$Res, Badge>;
  @useResult
  $Res call({
    int id,
    String name,
    String description,
    String icon,
    String? requirement,
    bool? earned,
    @JsonKey(name: 'earned_at') String? earnedAt,
  });
}

/// @nodoc
class _$BadgeCopyWithImpl<$Res, $Val extends Badge>
    implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Badge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? requirement = freezed,
    Object? earned = freezed,
    Object? earnedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            icon: null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                      as String,
            requirement: freezed == requirement
                ? _value.requirement
                : requirement // ignore: cast_nullable_to_non_nullable
                      as String?,
            earned: freezed == earned
                ? _value.earned
                : earned // ignore: cast_nullable_to_non_nullable
                      as bool?,
            earnedAt: freezed == earnedAt
                ? _value.earnedAt
                : earnedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BadgeImplCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$$BadgeImplCopyWith(
    _$BadgeImpl value,
    $Res Function(_$BadgeImpl) then,
  ) = __$$BadgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String description,
    String icon,
    String? requirement,
    bool? earned,
    @JsonKey(name: 'earned_at') String? earnedAt,
  });
}

/// @nodoc
class __$$BadgeImplCopyWithImpl<$Res>
    extends _$BadgeCopyWithImpl<$Res, _$BadgeImpl>
    implements _$$BadgeImplCopyWith<$Res> {
  __$$BadgeImplCopyWithImpl(
    _$BadgeImpl _value,
    $Res Function(_$BadgeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Badge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? icon = null,
    Object? requirement = freezed,
    Object? earned = freezed,
    Object? earnedAt = freezed,
  }) {
    return _then(
      _$BadgeImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        icon: null == icon
            ? _value.icon
            : icon // ignore: cast_nullable_to_non_nullable
                  as String,
        requirement: freezed == requirement
            ? _value.requirement
            : requirement // ignore: cast_nullable_to_non_nullable
                  as String?,
        earned: freezed == earned
            ? _value.earned
            : earned // ignore: cast_nullable_to_non_nullable
                  as bool?,
        earnedAt: freezed == earnedAt
            ? _value.earnedAt
            : earnedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BadgeImpl implements _Badge {
  const _$BadgeImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    this.requirement,
    this.earned,
    @JsonKey(name: 'earned_at') this.earnedAt,
  });

  factory _$BadgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadgeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String icon;
  @override
  final String? requirement;
  @override
  final bool? earned;
  @override
  @JsonKey(name: 'earned_at')
  final String? earnedAt;

  @override
  String toString() {
    return 'Badge(id: $id, name: $name, description: $description, icon: $icon, requirement: $requirement, earned: $earned, earnedAt: $earnedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadgeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.requirement, requirement) ||
                other.requirement == requirement) &&
            (identical(other.earned, earned) || other.earned == earned) &&
            (identical(other.earnedAt, earnedAt) ||
                other.earnedAt == earnedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    icon,
    requirement,
    earned,
    earnedAt,
  );

  /// Create a copy of Badge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadgeImplCopyWith<_$BadgeImpl> get copyWith =>
      __$$BadgeImplCopyWithImpl<_$BadgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BadgeImplToJson(this);
  }
}

abstract class _Badge implements Badge {
  const factory _Badge({
    required final int id,
    required final String name,
    required final String description,
    required final String icon,
    final String? requirement,
    final bool? earned,
    @JsonKey(name: 'earned_at') final String? earnedAt,
  }) = _$BadgeImpl;

  factory _Badge.fromJson(Map<String, dynamic> json) = _$BadgeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get icon;
  @override
  String? get requirement;
  @override
  bool? get earned;
  @override
  @JsonKey(name: 'earned_at')
  String? get earnedAt;

  /// Create a copy of Badge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadgeImplCopyWith<_$BadgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketEvent _$TicketEventFromJson(Map<String, dynamic> json) {
  return _TicketEvent.fromJson(json);
}

/// @nodoc
mixin _$TicketEvent {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get venue => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_date')
  String get eventDate => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_id')
  int? get teamId => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_name')
  String? get teamName => throw _privateConstructorUsedError;

  /// Serializes this TicketEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TicketEventCopyWith<TicketEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEventCopyWith<$Res> {
  factory $TicketEventCopyWith(
    TicketEvent value,
    $Res Function(TicketEvent) then,
  ) = _$TicketEventCopyWithImpl<$Res, TicketEvent>;
  @useResult
  $Res call({
    int id,
    String title,
    String venue,
    @JsonKey(name: 'event_date') String eventDate,
    int price,
    @JsonKey(name: 'team_id') int? teamId,
    int capacity,
    @JsonKey(name: 'team_name') String? teamName,
  });
}

/// @nodoc
class _$TicketEventCopyWithImpl<$Res, $Val extends TicketEvent>
    implements $TicketEventCopyWith<$Res> {
  _$TicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? venue = null,
    Object? eventDate = null,
    Object? price = null,
    Object? teamId = freezed,
    Object? capacity = null,
    Object? teamName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            venue: null == venue
                ? _value.venue
                : venue // ignore: cast_nullable_to_non_nullable
                      as String,
            eventDate: null == eventDate
                ? _value.eventDate
                : eventDate // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as int,
            teamId: freezed == teamId
                ? _value.teamId
                : teamId // ignore: cast_nullable_to_non_nullable
                      as int?,
            capacity: null == capacity
                ? _value.capacity
                : capacity // ignore: cast_nullable_to_non_nullable
                      as int,
            teamName: freezed == teamName
                ? _value.teamName
                : teamName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TicketEventImplCopyWith<$Res>
    implements $TicketEventCopyWith<$Res> {
  factory _$$TicketEventImplCopyWith(
    _$TicketEventImpl value,
    $Res Function(_$TicketEventImpl) then,
  ) = __$$TicketEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String venue,
    @JsonKey(name: 'event_date') String eventDate,
    int price,
    @JsonKey(name: 'team_id') int? teamId,
    int capacity,
    @JsonKey(name: 'team_name') String? teamName,
  });
}

/// @nodoc
class __$$TicketEventImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$TicketEventImpl>
    implements _$$TicketEventImplCopyWith<$Res> {
  __$$TicketEventImplCopyWithImpl(
    _$TicketEventImpl _value,
    $Res Function(_$TicketEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? venue = null,
    Object? eventDate = null,
    Object? price = null,
    Object? teamId = freezed,
    Object? capacity = null,
    Object? teamName = freezed,
  }) {
    return _then(
      _$TicketEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        venue: null == venue
            ? _value.venue
            : venue // ignore: cast_nullable_to_non_nullable
                  as String,
        eventDate: null == eventDate
            ? _value.eventDate
            : eventDate // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as int,
        teamId: freezed == teamId
            ? _value.teamId
            : teamId // ignore: cast_nullable_to_non_nullable
                  as int?,
        capacity: null == capacity
            ? _value.capacity
            : capacity // ignore: cast_nullable_to_non_nullable
                  as int,
        teamName: freezed == teamName
            ? _value.teamName
            : teamName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketEventImpl implements _TicketEvent {
  const _$TicketEventImpl({
    required this.id,
    required this.title,
    required this.venue,
    @JsonKey(name: 'event_date') required this.eventDate,
    required this.price,
    @JsonKey(name: 'team_id') this.teamId,
    required this.capacity,
    @JsonKey(name: 'team_name') this.teamName,
  });

  factory _$TicketEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketEventImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String venue;
  @override
  @JsonKey(name: 'event_date')
  final String eventDate;
  @override
  final int price;
  @override
  @JsonKey(name: 'team_id')
  final int? teamId;
  @override
  final int capacity;
  @override
  @JsonKey(name: 'team_name')
  final String? teamName;

  @override
  String toString() {
    return 'TicketEvent(id: $id, title: $title, venue: $venue, eventDate: $eventDate, price: $price, teamId: $teamId, capacity: $capacity, teamName: $teamName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            (identical(other.eventDate, eventDate) ||
                other.eventDate == eventDate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.teamId, teamId) || other.teamId == teamId) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    venue,
    eventDate,
    price,
    teamId,
    capacity,
    teamName,
  );

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketEventImplCopyWith<_$TicketEventImpl> get copyWith =>
      __$$TicketEventImplCopyWithImpl<_$TicketEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketEventImplToJson(this);
  }
}

abstract class _TicketEvent implements TicketEvent {
  const factory _TicketEvent({
    required final int id,
    required final String title,
    required final String venue,
    @JsonKey(name: 'event_date') required final String eventDate,
    required final int price,
    @JsonKey(name: 'team_id') final int? teamId,
    required final int capacity,
    @JsonKey(name: 'team_name') final String? teamName,
  }) = _$TicketEventImpl;

  factory _TicketEvent.fromJson(Map<String, dynamic> json) =
      _$TicketEventImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get venue;
  @override
  @JsonKey(name: 'event_date')
  String get eventDate;
  @override
  int get price;
  @override
  @JsonKey(name: 'team_id')
  int? get teamId;
  @override
  int get capacity;
  @override
  @JsonKey(name: 'team_name')
  String? get teamName;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TicketEventImplCopyWith<_$TicketEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) {
  return _NotificationItem.fromJson(json);
}

/// @nodoc
mixin _$NotificationItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get read => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationItemCopyWith<NotificationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationItemCopyWith<$Res> {
  factory $NotificationItemCopyWith(
    NotificationItem value,
    $Res Function(NotificationItem) then,
  ) = _$NotificationItemCopyWithImpl<$Res, NotificationItem>;
  @useResult
  $Res call({
    int id,
    String title,
    String body,
    int read,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class _$NotificationItemCopyWithImpl<$Res, $Val extends NotificationItem>
    implements $NotificationItemCopyWith<$Res> {
  _$NotificationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            read: null == read
                ? _value.read
                : read // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationItemImplCopyWith<$Res>
    implements $NotificationItemCopyWith<$Res> {
  factory _$$NotificationItemImplCopyWith(
    _$NotificationItemImpl value,
    $Res Function(_$NotificationItemImpl) then,
  ) = __$$NotificationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String body,
    int read,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class __$$NotificationItemImplCopyWithImpl<$Res>
    extends _$NotificationItemCopyWithImpl<$Res, _$NotificationItemImpl>
    implements _$$NotificationItemImplCopyWith<$Res> {
  __$$NotificationItemImplCopyWithImpl(
    _$NotificationItemImpl _value,
    $Res Function(_$NotificationItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? read = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$NotificationItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        read: null == read
            ? _value.read
            : read // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationItemImpl implements _NotificationItem {
  const _$NotificationItemImpl({
    required this.id,
    required this.title,
    required this.body,
    required this.read,
    @JsonKey(name: 'created_at') required this.createdAt,
  });

  factory _$NotificationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationItemImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String body;
  @override
  final int read;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'NotificationItem(id: $id, title: $title, body: $body, read: $read, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, read, createdAt);

  /// Create a copy of NotificationItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationItemImplCopyWith<_$NotificationItemImpl> get copyWith =>
      __$$NotificationItemImplCopyWithImpl<_$NotificationItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationItemImplToJson(this);
  }
}

abstract class _NotificationItem implements NotificationItem {
  const factory _NotificationItem({
    required final int id,
    required final String title,
    required final String body,
    required final int read,
    @JsonKey(name: 'created_at') required final String createdAt,
  }) = _$NotificationItemImpl;

  factory _NotificationItem.fromJson(Map<String, dynamic> json) =
      _$NotificationItemImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  int get read;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of NotificationItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationItemImplCopyWith<_$NotificationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaderboardEntry _$LeaderboardEntryFromJson(Map<String, dynamic> json) {
  return _LeaderboardEntry.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardEntry {
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'fan_points')
  int get fanPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_count')
  int get correctCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_predictions')
  int get totalPredictions => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardEntryCopyWith<LeaderboardEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEntryCopyWith<$Res> {
  factory $LeaderboardEntryCopyWith(
    LeaderboardEntry value,
    $Res Function(LeaderboardEntry) then,
  ) = _$LeaderboardEntryCopyWithImpl<$Res, LeaderboardEntry>;
  @useResult
  $Res call({
    @JsonKey(name: 'display_name') String displayName,
    @JsonKey(name: 'fan_points') int fanPoints,
    @JsonKey(name: 'correct_count') int correctCount,
    @JsonKey(name: 'total_predictions') int totalPredictions,
  });
}

/// @nodoc
class _$LeaderboardEntryCopyWithImpl<$Res, $Val extends LeaderboardEntry>
    implements $LeaderboardEntryCopyWith<$Res> {
  _$LeaderboardEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? fanPoints = null,
    Object? correctCount = null,
    Object? totalPredictions = null,
  }) {
    return _then(
      _value.copyWith(
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
            fanPoints: null == fanPoints
                ? _value.fanPoints
                : fanPoints // ignore: cast_nullable_to_non_nullable
                      as int,
            correctCount: null == correctCount
                ? _value.correctCount
                : correctCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPredictions: null == totalPredictions
                ? _value.totalPredictions
                : totalPredictions // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaderboardEntryImplCopyWith<$Res>
    implements $LeaderboardEntryCopyWith<$Res> {
  factory _$$LeaderboardEntryImplCopyWith(
    _$LeaderboardEntryImpl value,
    $Res Function(_$LeaderboardEntryImpl) then,
  ) = __$$LeaderboardEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'display_name') String displayName,
    @JsonKey(name: 'fan_points') int fanPoints,
    @JsonKey(name: 'correct_count') int correctCount,
    @JsonKey(name: 'total_predictions') int totalPredictions,
  });
}

/// @nodoc
class __$$LeaderboardEntryImplCopyWithImpl<$Res>
    extends _$LeaderboardEntryCopyWithImpl<$Res, _$LeaderboardEntryImpl>
    implements _$$LeaderboardEntryImplCopyWith<$Res> {
  __$$LeaderboardEntryImplCopyWithImpl(
    _$LeaderboardEntryImpl _value,
    $Res Function(_$LeaderboardEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaderboardEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? fanPoints = null,
    Object? correctCount = null,
    Object? totalPredictions = null,
  }) {
    return _then(
      _$LeaderboardEntryImpl(
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
        fanPoints: null == fanPoints
            ? _value.fanPoints
            : fanPoints // ignore: cast_nullable_to_non_nullable
                  as int,
        correctCount: null == correctCount
            ? _value.correctCount
            : correctCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPredictions: null == totalPredictions
            ? _value.totalPredictions
            : totalPredictions // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardEntryImpl implements _LeaderboardEntry {
  const _$LeaderboardEntryImpl({
    @JsonKey(name: 'display_name') required this.displayName,
    @JsonKey(name: 'fan_points') required this.fanPoints,
    @JsonKey(name: 'correct_count') required this.correctCount,
    @JsonKey(name: 'total_predictions') required this.totalPredictions,
  });

  factory _$LeaderboardEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardEntryImplFromJson(json);

  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'fan_points')
  final int fanPoints;
  @override
  @JsonKey(name: 'correct_count')
  final int correctCount;
  @override
  @JsonKey(name: 'total_predictions')
  final int totalPredictions;

  @override
  String toString() {
    return 'LeaderboardEntry(displayName: $displayName, fanPoints: $fanPoints, correctCount: $correctCount, totalPredictions: $totalPredictions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardEntryImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.fanPoints, fanPoints) ||
                other.fanPoints == fanPoints) &&
            (identical(other.correctCount, correctCount) ||
                other.correctCount == correctCount) &&
            (identical(other.totalPredictions, totalPredictions) ||
                other.totalPredictions == totalPredictions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    displayName,
    fanPoints,
    correctCount,
    totalPredictions,
  );

  /// Create a copy of LeaderboardEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardEntryImplCopyWith<_$LeaderboardEntryImpl> get copyWith =>
      __$$LeaderboardEntryImplCopyWithImpl<_$LeaderboardEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardEntryImplToJson(this);
  }
}

abstract class _LeaderboardEntry implements LeaderboardEntry {
  const factory _LeaderboardEntry({
    @JsonKey(name: 'display_name') required final String displayName,
    @JsonKey(name: 'fan_points') required final int fanPoints,
    @JsonKey(name: 'correct_count') required final int correctCount,
    @JsonKey(name: 'total_predictions') required final int totalPredictions,
  }) = _$LeaderboardEntryImpl;

  factory _LeaderboardEntry.fromJson(Map<String, dynamic> json) =
      _$LeaderboardEntryImpl.fromJson;

  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'fan_points')
  int get fanPoints;
  @override
  @JsonKey(name: 'correct_count')
  int get correctCount;
  @override
  @JsonKey(name: 'total_predictions')
  int get totalPredictions;

  /// Create a copy of LeaderboardEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardEntryImplCopyWith<_$LeaderboardEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FanPointsInfo _$FanPointsInfoFromJson(Map<String, dynamic> json) {
  return _FanPointsInfo.fromJson(json);
}

/// @nodoc
mixin _$FanPointsInfo {
  int get points => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get history => throw _privateConstructorUsedError;

  /// Serializes this FanPointsInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FanPointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FanPointsInfoCopyWith<FanPointsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FanPointsInfoCopyWith<$Res> {
  factory $FanPointsInfoCopyWith(
    FanPointsInfo value,
    $Res Function(FanPointsInfo) then,
  ) = _$FanPointsInfoCopyWithImpl<$Res, FanPointsInfo>;
  @useResult
  $Res call({
    int points,
    @JsonKey(name: 'displayName') String? displayName,
    List<Map<String, dynamic>>? history,
  });
}

/// @nodoc
class _$FanPointsInfoCopyWithImpl<$Res, $Val extends FanPointsInfo>
    implements $FanPointsInfoCopyWith<$Res> {
  _$FanPointsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FanPointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? displayName = freezed,
    Object? history = freezed,
  }) {
    return _then(
      _value.copyWith(
            points: null == points
                ? _value.points
                : points // ignore: cast_nullable_to_non_nullable
                      as int,
            displayName: freezed == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String?,
            history: freezed == history
                ? _value.history
                : history // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FanPointsInfoImplCopyWith<$Res>
    implements $FanPointsInfoCopyWith<$Res> {
  factory _$$FanPointsInfoImplCopyWith(
    _$FanPointsInfoImpl value,
    $Res Function(_$FanPointsInfoImpl) then,
  ) = __$$FanPointsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int points,
    @JsonKey(name: 'displayName') String? displayName,
    List<Map<String, dynamic>>? history,
  });
}

/// @nodoc
class __$$FanPointsInfoImplCopyWithImpl<$Res>
    extends _$FanPointsInfoCopyWithImpl<$Res, _$FanPointsInfoImpl>
    implements _$$FanPointsInfoImplCopyWith<$Res> {
  __$$FanPointsInfoImplCopyWithImpl(
    _$FanPointsInfoImpl _value,
    $Res Function(_$FanPointsInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FanPointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? displayName = freezed,
    Object? history = freezed,
  }) {
    return _then(
      _$FanPointsInfoImpl(
        points: null == points
            ? _value.points
            : points // ignore: cast_nullable_to_non_nullable
                  as int,
        displayName: freezed == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String?,
        history: freezed == history
            ? _value._history
            : history // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FanPointsInfoImpl implements _FanPointsInfo {
  const _$FanPointsInfoImpl({
    required this.points,
    @JsonKey(name: 'displayName') this.displayName,
    final List<Map<String, dynamic>>? history,
  }) : _history = history;

  factory _$FanPointsInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FanPointsInfoImplFromJson(json);

  @override
  final int points;
  @override
  @JsonKey(name: 'displayName')
  final String? displayName;
  final List<Map<String, dynamic>>? _history;
  @override
  List<Map<String, dynamic>>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FanPointsInfo(points: $points, displayName: $displayName, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FanPointsInfoImpl &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    points,
    displayName,
    const DeepCollectionEquality().hash(_history),
  );

  /// Create a copy of FanPointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FanPointsInfoImplCopyWith<_$FanPointsInfoImpl> get copyWith =>
      __$$FanPointsInfoImplCopyWithImpl<_$FanPointsInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FanPointsInfoImplToJson(this);
  }
}

abstract class _FanPointsInfo implements FanPointsInfo {
  const factory _FanPointsInfo({
    required final int points,
    @JsonKey(name: 'displayName') final String? displayName,
    final List<Map<String, dynamic>>? history,
  }) = _$FanPointsInfoImpl;

  factory _FanPointsInfo.fromJson(Map<String, dynamic> json) =
      _$FanPointsInfoImpl.fromJson;

  @override
  int get points;
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @override
  List<Map<String, dynamic>>? get history;

  /// Create a copy of FanPointsInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FanPointsInfoImplCopyWith<_$FanPointsInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Follow _$FollowFromJson(Map<String, dynamic> json) {
  return _Follow.fromJson(json);
}

/// @nodoc
mixin _$Follow {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_type')
  String get targetType => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_id')
  int get targetId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get target => throw _privateConstructorUsedError;

  /// Serializes this Follow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Follow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowCopyWith<Follow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowCopyWith<$Res> {
  factory $FollowCopyWith(Follow value, $Res Function(Follow) then) =
      _$FollowCopyWithImpl<$Res, Follow>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'target_type') String targetType,
    @JsonKey(name: 'target_id') int targetId,
    Map<String, dynamic>? target,
  });
}

/// @nodoc
class _$FollowCopyWithImpl<$Res, $Val extends Follow>
    implements $FollowCopyWith<$Res> {
  _$FollowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Follow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? targetType = null,
    Object? targetId = null,
    Object? target = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            targetType: null == targetType
                ? _value.targetType
                : targetType // ignore: cast_nullable_to_non_nullable
                      as String,
            targetId: null == targetId
                ? _value.targetId
                : targetId // ignore: cast_nullable_to_non_nullable
                      as int,
            target: freezed == target
                ? _value.target
                : target // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FollowImplCopyWith<$Res> implements $FollowCopyWith<$Res> {
  factory _$$FollowImplCopyWith(
    _$FollowImpl value,
    $Res Function(_$FollowImpl) then,
  ) = __$$FollowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'target_type') String targetType,
    @JsonKey(name: 'target_id') int targetId,
    Map<String, dynamic>? target,
  });
}

/// @nodoc
class __$$FollowImplCopyWithImpl<$Res>
    extends _$FollowCopyWithImpl<$Res, _$FollowImpl>
    implements _$$FollowImplCopyWith<$Res> {
  __$$FollowImplCopyWithImpl(
    _$FollowImpl _value,
    $Res Function(_$FollowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Follow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? targetType = null,
    Object? targetId = null,
    Object? target = freezed,
  }) {
    return _then(
      _$FollowImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        targetType: null == targetType
            ? _value.targetType
            : targetType // ignore: cast_nullable_to_non_nullable
                  as String,
        targetId: null == targetId
            ? _value.targetId
            : targetId // ignore: cast_nullable_to_non_nullable
                  as int,
        target: freezed == target
            ? _value._target
            : target // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowImpl implements _Follow {
  const _$FollowImpl({
    required this.id,
    @JsonKey(name: 'target_type') required this.targetType,
    @JsonKey(name: 'target_id') required this.targetId,
    final Map<String, dynamic>? target,
  }) : _target = target;

  factory _$FollowImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'target_type')
  final String targetType;
  @override
  @JsonKey(name: 'target_id')
  final int targetId;
  final Map<String, dynamic>? _target;
  @override
  Map<String, dynamic>? get target {
    final value = _target;
    if (value == null) return null;
    if (_target is EqualUnmodifiableMapView) return _target;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Follow(id: $id, targetType: $targetType, targetId: $targetId, target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            const DeepCollectionEquality().equals(other._target, _target));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    targetType,
    targetId,
    const DeepCollectionEquality().hash(_target),
  );

  /// Create a copy of Follow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowImplCopyWith<_$FollowImpl> get copyWith =>
      __$$FollowImplCopyWithImpl<_$FollowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowImplToJson(this);
  }
}

abstract class _Follow implements Follow {
  const factory _Follow({
    required final int id,
    @JsonKey(name: 'target_type') required final String targetType,
    @JsonKey(name: 'target_id') required final int targetId,
    final Map<String, dynamic>? target,
  }) = _$FollowImpl;

  factory _Follow.fromJson(Map<String, dynamic> json) = _$FollowImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'target_type')
  String get targetType;
  @override
  @JsonKey(name: 'target_id')
  int get targetId;
  @override
  Map<String, dynamic>? get target;

  /// Create a copy of Follow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowImplCopyWith<_$FollowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
