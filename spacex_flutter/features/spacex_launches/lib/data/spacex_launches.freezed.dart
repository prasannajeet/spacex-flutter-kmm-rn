// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spacex_launches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpacexLaunches _$SpacexLaunchesFromJson(Map<String, dynamic> json) {
  return _SpacexLaunches.fromJson(json);
}

/// @nodoc
mixin _$SpacexLaunches {
  @JsonKey(name: 'fairings')
  FairingsBean? get fairings => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  LinksBean? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'static_fire_date_utc')
  String? get staticFireDateUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'static_fire_date_unix')
  int? get staticFireDateUnix => throw _privateConstructorUsedError;
  @JsonKey(name: 'net')
  bool? get net => throw _privateConstructorUsedError;
  @JsonKey(name: 'window')
  int? get window => throw _privateConstructorUsedError;
  @JsonKey(name: 'rocket')
  String? get rocket => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'failures')
  List<FailuresBean>? get failures => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'crew')
  List<dynamic>? get crew => throw _privateConstructorUsedError;
  @JsonKey(name: 'ships')
  List<dynamic>? get ships => throw _privateConstructorUsedError;
  @JsonKey(name: 'capsules')
  List<dynamic>? get capsules => throw _privateConstructorUsedError;
  @JsonKey(name: 'payloads')
  List<String>? get payloads => throw _privateConstructorUsedError;
  @JsonKey(name: 'launchpad')
  String? get launchpad => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight_number')
  int? get flightNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_utc')
  String? get dateUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_unix')
  int? get dateUnix => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_local')
  String? get dateLocal => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_precision')
  String? get datePrecision => throw _privateConstructorUsedError;
  @JsonKey(name: 'upcoming')
  bool? get upcoming => throw _privateConstructorUsedError;
  @JsonKey(name: 'cores')
  List<CoresBean>? get cores => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_update')
  bool? get autoUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'tbd')
  bool? get tbd => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpacexLaunchesCopyWith<SpacexLaunches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpacexLaunchesCopyWith<$Res> {
  factory $SpacexLaunchesCopyWith(
          SpacexLaunches value, $Res Function(SpacexLaunches) then) =
      _$SpacexLaunchesCopyWithImpl<$Res, SpacexLaunches>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fairings') FairingsBean? fairings,
      @JsonKey(name: 'links') LinksBean? links,
      @JsonKey(name: 'static_fire_date_utc') String? staticFireDateUtc,
      @JsonKey(name: 'static_fire_date_unix') int? staticFireDateUnix,
      @JsonKey(name: 'net') bool? net,
      @JsonKey(name: 'window') int? window,
      @JsonKey(name: 'rocket') String? rocket,
      @JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'failures') List<FailuresBean>? failures,
      @JsonKey(name: 'details') String? details,
      @JsonKey(name: 'crew') List<dynamic>? crew,
      @JsonKey(name: 'ships') List<dynamic>? ships,
      @JsonKey(name: 'capsules') List<dynamic>? capsules,
      @JsonKey(name: 'payloads') List<String>? payloads,
      @JsonKey(name: 'launchpad') String? launchpad,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'date_utc') String? dateUtc,
      @JsonKey(name: 'date_unix') int? dateUnix,
      @JsonKey(name: 'date_local') String? dateLocal,
      @JsonKey(name: 'date_precision') String? datePrecision,
      @JsonKey(name: 'upcoming') bool? upcoming,
      @JsonKey(name: 'cores') List<CoresBean>? cores,
      @JsonKey(name: 'auto_update') bool? autoUpdate,
      @JsonKey(name: 'tbd') bool? tbd,
      @JsonKey(name: 'id') String? id});

  $FairingsBeanCopyWith<$Res>? get fairings;
  $LinksBeanCopyWith<$Res>? get links;
}

/// @nodoc
class _$SpacexLaunchesCopyWithImpl<$Res, $Val extends SpacexLaunches>
    implements $SpacexLaunchesCopyWith<$Res> {
  _$SpacexLaunchesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fairings = freezed,
    Object? links = freezed,
    Object? staticFireDateUtc = freezed,
    Object? staticFireDateUnix = freezed,
    Object? net = freezed,
    Object? window = freezed,
    Object? rocket = freezed,
    Object? success = freezed,
    Object? failures = freezed,
    Object? details = freezed,
    Object? crew = freezed,
    Object? ships = freezed,
    Object? capsules = freezed,
    Object? payloads = freezed,
    Object? launchpad = freezed,
    Object? flightNumber = freezed,
    Object? name = freezed,
    Object? dateUtc = freezed,
    Object? dateUnix = freezed,
    Object? dateLocal = freezed,
    Object? datePrecision = freezed,
    Object? upcoming = freezed,
    Object? cores = freezed,
    Object? autoUpdate = freezed,
    Object? tbd = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      fairings: freezed == fairings
          ? _value.fairings
          : fairings // ignore: cast_nullable_to_non_nullable
              as FairingsBean?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksBean?,
      staticFireDateUtc: freezed == staticFireDateUtc
          ? _value.staticFireDateUtc
          : staticFireDateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      staticFireDateUnix: freezed == staticFireDateUnix
          ? _value.staticFireDateUnix
          : staticFireDateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as bool?,
      window: freezed == window
          ? _value.window
          : window // ignore: cast_nullable_to_non_nullable
              as int?,
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      failures: freezed == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as List<FailuresBean>?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      crew: freezed == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      ships: freezed == ships
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      capsules: freezed == capsules
          ? _value.capsules
          : capsules // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      payloads: freezed == payloads
          ? _value.payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      launchpad: freezed == launchpad
          ? _value.launchpad
          : launchpad // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUtc: freezed == dateUtc
          ? _value.dateUtc
          : dateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUnix: freezed == dateUnix
          ? _value.dateUnix
          : dateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      dateLocal: freezed == dateLocal
          ? _value.dateLocal
          : dateLocal // ignore: cast_nullable_to_non_nullable
              as String?,
      datePrecision: freezed == datePrecision
          ? _value.datePrecision
          : datePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      upcoming: freezed == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      cores: freezed == cores
          ? _value.cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<CoresBean>?,
      autoUpdate: freezed == autoUpdate
          ? _value.autoUpdate
          : autoUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      tbd: freezed == tbd
          ? _value.tbd
          : tbd // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FairingsBeanCopyWith<$Res>? get fairings {
    if (_value.fairings == null) {
      return null;
    }

    return $FairingsBeanCopyWith<$Res>(_value.fairings!, (value) {
      return _then(_value.copyWith(fairings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksBeanCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksBeanCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpacexLaunchesImplCopyWith<$Res>
    implements $SpacexLaunchesCopyWith<$Res> {
  factory _$$SpacexLaunchesImplCopyWith(_$SpacexLaunchesImpl value,
          $Res Function(_$SpacexLaunchesImpl) then) =
      __$$SpacexLaunchesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fairings') FairingsBean? fairings,
      @JsonKey(name: 'links') LinksBean? links,
      @JsonKey(name: 'static_fire_date_utc') String? staticFireDateUtc,
      @JsonKey(name: 'static_fire_date_unix') int? staticFireDateUnix,
      @JsonKey(name: 'net') bool? net,
      @JsonKey(name: 'window') int? window,
      @JsonKey(name: 'rocket') String? rocket,
      @JsonKey(name: 'success') bool? success,
      @JsonKey(name: 'failures') List<FailuresBean>? failures,
      @JsonKey(name: 'details') String? details,
      @JsonKey(name: 'crew') List<dynamic>? crew,
      @JsonKey(name: 'ships') List<dynamic>? ships,
      @JsonKey(name: 'capsules') List<dynamic>? capsules,
      @JsonKey(name: 'payloads') List<String>? payloads,
      @JsonKey(name: 'launchpad') String? launchpad,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'date_utc') String? dateUtc,
      @JsonKey(name: 'date_unix') int? dateUnix,
      @JsonKey(name: 'date_local') String? dateLocal,
      @JsonKey(name: 'date_precision') String? datePrecision,
      @JsonKey(name: 'upcoming') bool? upcoming,
      @JsonKey(name: 'cores') List<CoresBean>? cores,
      @JsonKey(name: 'auto_update') bool? autoUpdate,
      @JsonKey(name: 'tbd') bool? tbd,
      @JsonKey(name: 'id') String? id});

  @override
  $FairingsBeanCopyWith<$Res>? get fairings;
  @override
  $LinksBeanCopyWith<$Res>? get links;
}

/// @nodoc
class __$$SpacexLaunchesImplCopyWithImpl<$Res>
    extends _$SpacexLaunchesCopyWithImpl<$Res, _$SpacexLaunchesImpl>
    implements _$$SpacexLaunchesImplCopyWith<$Res> {
  __$$SpacexLaunchesImplCopyWithImpl(
      _$SpacexLaunchesImpl _value, $Res Function(_$SpacexLaunchesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fairings = freezed,
    Object? links = freezed,
    Object? staticFireDateUtc = freezed,
    Object? staticFireDateUnix = freezed,
    Object? net = freezed,
    Object? window = freezed,
    Object? rocket = freezed,
    Object? success = freezed,
    Object? failures = freezed,
    Object? details = freezed,
    Object? crew = freezed,
    Object? ships = freezed,
    Object? capsules = freezed,
    Object? payloads = freezed,
    Object? launchpad = freezed,
    Object? flightNumber = freezed,
    Object? name = freezed,
    Object? dateUtc = freezed,
    Object? dateUnix = freezed,
    Object? dateLocal = freezed,
    Object? datePrecision = freezed,
    Object? upcoming = freezed,
    Object? cores = freezed,
    Object? autoUpdate = freezed,
    Object? tbd = freezed,
    Object? id = freezed,
  }) {
    return _then(_$SpacexLaunchesImpl(
      fairings: freezed == fairings
          ? _value.fairings
          : fairings // ignore: cast_nullable_to_non_nullable
              as FairingsBean?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksBean?,
      staticFireDateUtc: freezed == staticFireDateUtc
          ? _value.staticFireDateUtc
          : staticFireDateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      staticFireDateUnix: freezed == staticFireDateUnix
          ? _value.staticFireDateUnix
          : staticFireDateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as bool?,
      window: freezed == window
          ? _value.window
          : window // ignore: cast_nullable_to_non_nullable
              as int?,
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      failures: freezed == failures
          ? _value._failures
          : failures // ignore: cast_nullable_to_non_nullable
              as List<FailuresBean>?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      crew: freezed == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      ships: freezed == ships
          ? _value._ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      capsules: freezed == capsules
          ? _value._capsules
          : capsules // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      payloads: freezed == payloads
          ? _value._payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      launchpad: freezed == launchpad
          ? _value.launchpad
          : launchpad // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUtc: freezed == dateUtc
          ? _value.dateUtc
          : dateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUnix: freezed == dateUnix
          ? _value.dateUnix
          : dateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      dateLocal: freezed == dateLocal
          ? _value.dateLocal
          : dateLocal // ignore: cast_nullable_to_non_nullable
              as String?,
      datePrecision: freezed == datePrecision
          ? _value.datePrecision
          : datePrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      upcoming: freezed == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      cores: freezed == cores
          ? _value._cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<CoresBean>?,
      autoUpdate: freezed == autoUpdate
          ? _value.autoUpdate
          : autoUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      tbd: freezed == tbd
          ? _value.tbd
          : tbd // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpacexLaunchesImpl implements _SpacexLaunches {
  const _$SpacexLaunchesImpl(
      {@JsonKey(name: 'fairings') this.fairings,
      @JsonKey(name: 'links') this.links,
      @JsonKey(name: 'static_fire_date_utc') this.staticFireDateUtc,
      @JsonKey(name: 'static_fire_date_unix') this.staticFireDateUnix,
      @JsonKey(name: 'net') this.net,
      @JsonKey(name: 'window') this.window,
      @JsonKey(name: 'rocket') this.rocket,
      @JsonKey(name: 'success') this.success,
      @JsonKey(name: 'failures') final List<FailuresBean>? failures,
      @JsonKey(name: 'details') this.details,
      @JsonKey(name: 'crew') final List<dynamic>? crew,
      @JsonKey(name: 'ships') final List<dynamic>? ships,
      @JsonKey(name: 'capsules') final List<dynamic>? capsules,
      @JsonKey(name: 'payloads') final List<String>? payloads,
      @JsonKey(name: 'launchpad') this.launchpad,
      @JsonKey(name: 'flight_number') this.flightNumber,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'date_utc') this.dateUtc,
      @JsonKey(name: 'date_unix') this.dateUnix,
      @JsonKey(name: 'date_local') this.dateLocal,
      @JsonKey(name: 'date_precision') this.datePrecision,
      @JsonKey(name: 'upcoming') this.upcoming,
      @JsonKey(name: 'cores') final List<CoresBean>? cores,
      @JsonKey(name: 'auto_update') this.autoUpdate,
      @JsonKey(name: 'tbd') this.tbd,
      @JsonKey(name: 'id') this.id})
      : _failures = failures,
        _crew = crew,
        _ships = ships,
        _capsules = capsules,
        _payloads = payloads,
        _cores = cores;

  factory _$SpacexLaunchesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpacexLaunchesImplFromJson(json);

  @override
  @JsonKey(name: 'fairings')
  final FairingsBean? fairings;
  @override
  @JsonKey(name: 'links')
  final LinksBean? links;
  @override
  @JsonKey(name: 'static_fire_date_utc')
  final String? staticFireDateUtc;
  @override
  @JsonKey(name: 'static_fire_date_unix')
  final int? staticFireDateUnix;
  @override
  @JsonKey(name: 'net')
  final bool? net;
  @override
  @JsonKey(name: 'window')
  final int? window;
  @override
  @JsonKey(name: 'rocket')
  final String? rocket;
  @override
  @JsonKey(name: 'success')
  final bool? success;
  final List<FailuresBean>? _failures;
  @override
  @JsonKey(name: 'failures')
  List<FailuresBean>? get failures {
    final value = _failures;
    if (value == null) return null;
    if (_failures is EqualUnmodifiableListView) return _failures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'details')
  final String? details;
  final List<dynamic>? _crew;
  @override
  @JsonKey(name: 'crew')
  List<dynamic>? get crew {
    final value = _crew;
    if (value == null) return null;
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _ships;
  @override
  @JsonKey(name: 'ships')
  List<dynamic>? get ships {
    final value = _ships;
    if (value == null) return null;
    if (_ships is EqualUnmodifiableListView) return _ships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _capsules;
  @override
  @JsonKey(name: 'capsules')
  List<dynamic>? get capsules {
    final value = _capsules;
    if (value == null) return null;
    if (_capsules is EqualUnmodifiableListView) return _capsules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _payloads;
  @override
  @JsonKey(name: 'payloads')
  List<String>? get payloads {
    final value = _payloads;
    if (value == null) return null;
    if (_payloads is EqualUnmodifiableListView) return _payloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'launchpad')
  final String? launchpad;
  @override
  @JsonKey(name: 'flight_number')
  final int? flightNumber;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'date_utc')
  final String? dateUtc;
  @override
  @JsonKey(name: 'date_unix')
  final int? dateUnix;
  @override
  @JsonKey(name: 'date_local')
  final String? dateLocal;
  @override
  @JsonKey(name: 'date_precision')
  final String? datePrecision;
  @override
  @JsonKey(name: 'upcoming')
  final bool? upcoming;
  final List<CoresBean>? _cores;
  @override
  @JsonKey(name: 'cores')
  List<CoresBean>? get cores {
    final value = _cores;
    if (value == null) return null;
    if (_cores is EqualUnmodifiableListView) return _cores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'auto_update')
  final bool? autoUpdate;
  @override
  @JsonKey(name: 'tbd')
  final bool? tbd;
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'SpacexLaunches(fairings: $fairings, links: $links, staticFireDateUtc: $staticFireDateUtc, staticFireDateUnix: $staticFireDateUnix, net: $net, window: $window, rocket: $rocket, success: $success, failures: $failures, details: $details, crew: $crew, ships: $ships, capsules: $capsules, payloads: $payloads, launchpad: $launchpad, flightNumber: $flightNumber, name: $name, dateUtc: $dateUtc, dateUnix: $dateUnix, dateLocal: $dateLocal, datePrecision: $datePrecision, upcoming: $upcoming, cores: $cores, autoUpdate: $autoUpdate, tbd: $tbd, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpacexLaunchesImpl &&
            (identical(other.fairings, fairings) ||
                other.fairings == fairings) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.staticFireDateUtc, staticFireDateUtc) ||
                other.staticFireDateUtc == staticFireDateUtc) &&
            (identical(other.staticFireDateUnix, staticFireDateUnix) ||
                other.staticFireDateUnix == staticFireDateUnix) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.window, window) || other.window == window) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._failures, _failures) &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality().equals(other._crew, _crew) &&
            const DeepCollectionEquality().equals(other._ships, _ships) &&
            const DeepCollectionEquality().equals(other._capsules, _capsules) &&
            const DeepCollectionEquality().equals(other._payloads, _payloads) &&
            (identical(other.launchpad, launchpad) ||
                other.launchpad == launchpad) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateUtc, dateUtc) || other.dateUtc == dateUtc) &&
            (identical(other.dateUnix, dateUnix) ||
                other.dateUnix == dateUnix) &&
            (identical(other.dateLocal, dateLocal) ||
                other.dateLocal == dateLocal) &&
            (identical(other.datePrecision, datePrecision) ||
                other.datePrecision == datePrecision) &&
            (identical(other.upcoming, upcoming) ||
                other.upcoming == upcoming) &&
            const DeepCollectionEquality().equals(other._cores, _cores) &&
            (identical(other.autoUpdate, autoUpdate) ||
                other.autoUpdate == autoUpdate) &&
            (identical(other.tbd, tbd) || other.tbd == tbd) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        fairings,
        links,
        staticFireDateUtc,
        staticFireDateUnix,
        net,
        window,
        rocket,
        success,
        const DeepCollectionEquality().hash(_failures),
        details,
        const DeepCollectionEquality().hash(_crew),
        const DeepCollectionEquality().hash(_ships),
        const DeepCollectionEquality().hash(_capsules),
        const DeepCollectionEquality().hash(_payloads),
        launchpad,
        flightNumber,
        name,
        dateUtc,
        dateUnix,
        dateLocal,
        datePrecision,
        upcoming,
        const DeepCollectionEquality().hash(_cores),
        autoUpdate,
        tbd,
        id
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpacexLaunchesImplCopyWith<_$SpacexLaunchesImpl> get copyWith =>
      __$$SpacexLaunchesImplCopyWithImpl<_$SpacexLaunchesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpacexLaunchesImplToJson(
      this,
    );
  }
}

abstract class _SpacexLaunches implements SpacexLaunches {
  const factory _SpacexLaunches(
      {@JsonKey(name: 'fairings') final FairingsBean? fairings,
      @JsonKey(name: 'links') final LinksBean? links,
      @JsonKey(name: 'static_fire_date_utc') final String? staticFireDateUtc,
      @JsonKey(name: 'static_fire_date_unix') final int? staticFireDateUnix,
      @JsonKey(name: 'net') final bool? net,
      @JsonKey(name: 'window') final int? window,
      @JsonKey(name: 'rocket') final String? rocket,
      @JsonKey(name: 'success') final bool? success,
      @JsonKey(name: 'failures') final List<FailuresBean>? failures,
      @JsonKey(name: 'details') final String? details,
      @JsonKey(name: 'crew') final List<dynamic>? crew,
      @JsonKey(name: 'ships') final List<dynamic>? ships,
      @JsonKey(name: 'capsules') final List<dynamic>? capsules,
      @JsonKey(name: 'payloads') final List<String>? payloads,
      @JsonKey(name: 'launchpad') final String? launchpad,
      @JsonKey(name: 'flight_number') final int? flightNumber,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'date_utc') final String? dateUtc,
      @JsonKey(name: 'date_unix') final int? dateUnix,
      @JsonKey(name: 'date_local') final String? dateLocal,
      @JsonKey(name: 'date_precision') final String? datePrecision,
      @JsonKey(name: 'upcoming') final bool? upcoming,
      @JsonKey(name: 'cores') final List<CoresBean>? cores,
      @JsonKey(name: 'auto_update') final bool? autoUpdate,
      @JsonKey(name: 'tbd') final bool? tbd,
      @JsonKey(name: 'id') final String? id}) = _$SpacexLaunchesImpl;

  factory _SpacexLaunches.fromJson(Map<String, dynamic> json) =
      _$SpacexLaunchesImpl.fromJson;

  @override
  @JsonKey(name: 'fairings')
  FairingsBean? get fairings;
  @override
  @JsonKey(name: 'links')
  LinksBean? get links;
  @override
  @JsonKey(name: 'static_fire_date_utc')
  String? get staticFireDateUtc;
  @override
  @JsonKey(name: 'static_fire_date_unix')
  int? get staticFireDateUnix;
  @override
  @JsonKey(name: 'net')
  bool? get net;
  @override
  @JsonKey(name: 'window')
  int? get window;
  @override
  @JsonKey(name: 'rocket')
  String? get rocket;
  @override
  @JsonKey(name: 'success')
  bool? get success;
  @override
  @JsonKey(name: 'failures')
  List<FailuresBean>? get failures;
  @override
  @JsonKey(name: 'details')
  String? get details;
  @override
  @JsonKey(name: 'crew')
  List<dynamic>? get crew;
  @override
  @JsonKey(name: 'ships')
  List<dynamic>? get ships;
  @override
  @JsonKey(name: 'capsules')
  List<dynamic>? get capsules;
  @override
  @JsonKey(name: 'payloads')
  List<String>? get payloads;
  @override
  @JsonKey(name: 'launchpad')
  String? get launchpad;
  @override
  @JsonKey(name: 'flight_number')
  int? get flightNumber;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'date_utc')
  String? get dateUtc;
  @override
  @JsonKey(name: 'date_unix')
  int? get dateUnix;
  @override
  @JsonKey(name: 'date_local')
  String? get dateLocal;
  @override
  @JsonKey(name: 'date_precision')
  String? get datePrecision;
  @override
  @JsonKey(name: 'upcoming')
  bool? get upcoming;
  @override
  @JsonKey(name: 'cores')
  List<CoresBean>? get cores;
  @override
  @JsonKey(name: 'auto_update')
  bool? get autoUpdate;
  @override
  @JsonKey(name: 'tbd')
  bool? get tbd;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$SpacexLaunchesImplCopyWith<_$SpacexLaunchesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoresBean _$CoresBeanFromJson(Map<String, dynamic> json) {
  return _CoresBean.fromJson(json);
}

/// @nodoc
mixin _$CoresBean {
  @JsonKey(name: 'core')
  String? get core => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight')
  int? get flight => throw _privateConstructorUsedError;
  @JsonKey(name: 'gridfins')
  bool? get gridfins => throw _privateConstructorUsedError;
  @JsonKey(name: 'legs')
  bool? get legs => throw _privateConstructorUsedError;
  @JsonKey(name: 'reused')
  bool? get reused => throw _privateConstructorUsedError;
  @JsonKey(name: 'landing_attempt')
  bool? get landingAttempt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoresBeanCopyWith<CoresBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoresBeanCopyWith<$Res> {
  factory $CoresBeanCopyWith(CoresBean value, $Res Function(CoresBean) then) =
      _$CoresBeanCopyWithImpl<$Res, CoresBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'core') String? core,
      @JsonKey(name: 'flight') int? flight,
      @JsonKey(name: 'gridfins') bool? gridfins,
      @JsonKey(name: 'legs') bool? legs,
      @JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'landing_attempt') bool? landingAttempt});
}

/// @nodoc
class _$CoresBeanCopyWithImpl<$Res, $Val extends CoresBean>
    implements $CoresBeanCopyWith<$Res> {
  _$CoresBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? core = freezed,
    Object? flight = freezed,
    Object? gridfins = freezed,
    Object? legs = freezed,
    Object? reused = freezed,
    Object? landingAttempt = freezed,
  }) {
    return _then(_value.copyWith(
      core: freezed == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as int?,
      gridfins: freezed == gridfins
          ? _value.gridfins
          : gridfins // ignore: cast_nullable_to_non_nullable
              as bool?,
      legs: freezed == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as bool?,
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingAttempt: freezed == landingAttempt
          ? _value.landingAttempt
          : landingAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoresBeanImplCopyWith<$Res>
    implements $CoresBeanCopyWith<$Res> {
  factory _$$CoresBeanImplCopyWith(
          _$CoresBeanImpl value, $Res Function(_$CoresBeanImpl) then) =
      __$$CoresBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'core') String? core,
      @JsonKey(name: 'flight') int? flight,
      @JsonKey(name: 'gridfins') bool? gridfins,
      @JsonKey(name: 'legs') bool? legs,
      @JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'landing_attempt') bool? landingAttempt});
}

/// @nodoc
class __$$CoresBeanImplCopyWithImpl<$Res>
    extends _$CoresBeanCopyWithImpl<$Res, _$CoresBeanImpl>
    implements _$$CoresBeanImplCopyWith<$Res> {
  __$$CoresBeanImplCopyWithImpl(
      _$CoresBeanImpl _value, $Res Function(_$CoresBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? core = freezed,
    Object? flight = freezed,
    Object? gridfins = freezed,
    Object? legs = freezed,
    Object? reused = freezed,
    Object? landingAttempt = freezed,
  }) {
    return _then(_$CoresBeanImpl(
      core: freezed == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as int?,
      gridfins: freezed == gridfins
          ? _value.gridfins
          : gridfins // ignore: cast_nullable_to_non_nullable
              as bool?,
      legs: freezed == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as bool?,
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingAttempt: freezed == landingAttempt
          ? _value.landingAttempt
          : landingAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoresBeanImpl implements _CoresBean {
  const _$CoresBeanImpl(
      {@JsonKey(name: 'core') this.core,
      @JsonKey(name: 'flight') this.flight,
      @JsonKey(name: 'gridfins') this.gridfins,
      @JsonKey(name: 'legs') this.legs,
      @JsonKey(name: 'reused') this.reused,
      @JsonKey(name: 'landing_attempt') this.landingAttempt});

  factory _$CoresBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoresBeanImplFromJson(json);

  @override
  @JsonKey(name: 'core')
  final String? core;
  @override
  @JsonKey(name: 'flight')
  final int? flight;
  @override
  @JsonKey(name: 'gridfins')
  final bool? gridfins;
  @override
  @JsonKey(name: 'legs')
  final bool? legs;
  @override
  @JsonKey(name: 'reused')
  final bool? reused;
  @override
  @JsonKey(name: 'landing_attempt')
  final bool? landingAttempt;

  @override
  String toString() {
    return 'CoresBean(core: $core, flight: $flight, gridfins: $gridfins, legs: $legs, reused: $reused, landingAttempt: $landingAttempt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoresBeanImpl &&
            (identical(other.core, core) || other.core == core) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.gridfins, gridfins) ||
                other.gridfins == gridfins) &&
            (identical(other.legs, legs) || other.legs == legs) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.landingAttempt, landingAttempt) ||
                other.landingAttempt == landingAttempt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, core, flight, gridfins, legs, reused, landingAttempt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoresBeanImplCopyWith<_$CoresBeanImpl> get copyWith =>
      __$$CoresBeanImplCopyWithImpl<_$CoresBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoresBeanImplToJson(
      this,
    );
  }
}

abstract class _CoresBean implements CoresBean {
  const factory _CoresBean(
          {@JsonKey(name: 'core') final String? core,
          @JsonKey(name: 'flight') final int? flight,
          @JsonKey(name: 'gridfins') final bool? gridfins,
          @JsonKey(name: 'legs') final bool? legs,
          @JsonKey(name: 'reused') final bool? reused,
          @JsonKey(name: 'landing_attempt') final bool? landingAttempt}) =
      _$CoresBeanImpl;

  factory _CoresBean.fromJson(Map<String, dynamic> json) =
      _$CoresBeanImpl.fromJson;

  @override
  @JsonKey(name: 'core')
  String? get core;
  @override
  @JsonKey(name: 'flight')
  int? get flight;
  @override
  @JsonKey(name: 'gridfins')
  bool? get gridfins;
  @override
  @JsonKey(name: 'legs')
  bool? get legs;
  @override
  @JsonKey(name: 'reused')
  bool? get reused;
  @override
  @JsonKey(name: 'landing_attempt')
  bool? get landingAttempt;
  @override
  @JsonKey(ignore: true)
  _$$CoresBeanImplCopyWith<_$CoresBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FailuresBean _$FailuresBeanFromJson(Map<String, dynamic> json) {
  return _FailuresBean.fromJson(json);
}

/// @nodoc
mixin _$FailuresBean {
  @JsonKey(name: 'time')
  int? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailuresBeanCopyWith<FailuresBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailuresBeanCopyWith<$Res> {
  factory $FailuresBeanCopyWith(
          FailuresBean value, $Res Function(FailuresBean) then) =
      _$FailuresBeanCopyWithImpl<$Res, FailuresBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time') int? time,
      @JsonKey(name: 'reason') String? reason});
}

/// @nodoc
class _$FailuresBeanCopyWithImpl<$Res, $Val extends FailuresBean>
    implements $FailuresBeanCopyWith<$Res> {
  _$FailuresBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailuresBeanImplCopyWith<$Res>
    implements $FailuresBeanCopyWith<$Res> {
  factory _$$FailuresBeanImplCopyWith(
          _$FailuresBeanImpl value, $Res Function(_$FailuresBeanImpl) then) =
      __$$FailuresBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time') int? time,
      @JsonKey(name: 'reason') String? reason});
}

/// @nodoc
class __$$FailuresBeanImplCopyWithImpl<$Res>
    extends _$FailuresBeanCopyWithImpl<$Res, _$FailuresBeanImpl>
    implements _$$FailuresBeanImplCopyWith<$Res> {
  __$$FailuresBeanImplCopyWithImpl(
      _$FailuresBeanImpl _value, $Res Function(_$FailuresBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$FailuresBeanImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailuresBeanImpl implements _FailuresBean {
  const _$FailuresBeanImpl(
      {@JsonKey(name: 'time') this.time, @JsonKey(name: 'reason') this.reason});

  factory _$FailuresBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailuresBeanImplFromJson(json);

  @override
  @JsonKey(name: 'time')
  final int? time;
  @override
  @JsonKey(name: 'reason')
  final String? reason;

  @override
  String toString() {
    return 'FailuresBean(time: $time, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailuresBeanImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailuresBeanImplCopyWith<_$FailuresBeanImpl> get copyWith =>
      __$$FailuresBeanImplCopyWithImpl<_$FailuresBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailuresBeanImplToJson(
      this,
    );
  }
}

abstract class _FailuresBean implements FailuresBean {
  const factory _FailuresBean(
      {@JsonKey(name: 'time') final int? time,
      @JsonKey(name: 'reason') final String? reason}) = _$FailuresBeanImpl;

  factory _FailuresBean.fromJson(Map<String, dynamic> json) =
      _$FailuresBeanImpl.fromJson;

  @override
  @JsonKey(name: 'time')
  int? get time;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$FailuresBeanImplCopyWith<_$FailuresBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinksBean _$LinksBeanFromJson(Map<String, dynamic> json) {
  return _LinksBean.fromJson(json);
}

/// @nodoc
mixin _$LinksBean {
  @JsonKey(name: 'patch')
  PatchBean? get patch => throw _privateConstructorUsedError;
  @JsonKey(name: 'reddit')
  RedditBean? get reddit => throw _privateConstructorUsedError;
  @JsonKey(name: 'flickr')
  FlickrBean? get flickr => throw _privateConstructorUsedError;
  @JsonKey(name: 'webcast')
  String? get webcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'youtube_id')
  String? get youtubeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'article')
  String? get article => throw _privateConstructorUsedError;
  @JsonKey(name: 'wikipedia')
  String? get wikipedia => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksBeanCopyWith<LinksBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksBeanCopyWith<$Res> {
  factory $LinksBeanCopyWith(LinksBean value, $Res Function(LinksBean) then) =
      _$LinksBeanCopyWithImpl<$Res, LinksBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'patch') PatchBean? patch,
      @JsonKey(name: 'reddit') RedditBean? reddit,
      @JsonKey(name: 'flickr') FlickrBean? flickr,
      @JsonKey(name: 'webcast') String? webcast,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      @JsonKey(name: 'article') String? article,
      @JsonKey(name: 'wikipedia') String? wikipedia});

  $PatchBeanCopyWith<$Res>? get patch;
  $RedditBeanCopyWith<$Res>? get reddit;
  $FlickrBeanCopyWith<$Res>? get flickr;
}

/// @nodoc
class _$LinksBeanCopyWithImpl<$Res, $Val extends LinksBean>
    implements $LinksBeanCopyWith<$Res> {
  _$LinksBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patch = freezed,
    Object? reddit = freezed,
    Object? flickr = freezed,
    Object? webcast = freezed,
    Object? youtubeId = freezed,
    Object? article = freezed,
    Object? wikipedia = freezed,
  }) {
    return _then(_value.copyWith(
      patch: freezed == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as PatchBean?,
      reddit: freezed == reddit
          ? _value.reddit
          : reddit // ignore: cast_nullable_to_non_nullable
              as RedditBean?,
      flickr: freezed == flickr
          ? _value.flickr
          : flickr // ignore: cast_nullable_to_non_nullable
              as FlickrBean?,
      webcast: freezed == webcast
          ? _value.webcast
          : webcast // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatchBeanCopyWith<$Res>? get patch {
    if (_value.patch == null) {
      return null;
    }

    return $PatchBeanCopyWith<$Res>(_value.patch!, (value) {
      return _then(_value.copyWith(patch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RedditBeanCopyWith<$Res>? get reddit {
    if (_value.reddit == null) {
      return null;
    }

    return $RedditBeanCopyWith<$Res>(_value.reddit!, (value) {
      return _then(_value.copyWith(reddit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlickrBeanCopyWith<$Res>? get flickr {
    if (_value.flickr == null) {
      return null;
    }

    return $FlickrBeanCopyWith<$Res>(_value.flickr!, (value) {
      return _then(_value.copyWith(flickr: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LinksBeanImplCopyWith<$Res>
    implements $LinksBeanCopyWith<$Res> {
  factory _$$LinksBeanImplCopyWith(
          _$LinksBeanImpl value, $Res Function(_$LinksBeanImpl) then) =
      __$$LinksBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'patch') PatchBean? patch,
      @JsonKey(name: 'reddit') RedditBean? reddit,
      @JsonKey(name: 'flickr') FlickrBean? flickr,
      @JsonKey(name: 'webcast') String? webcast,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      @JsonKey(name: 'article') String? article,
      @JsonKey(name: 'wikipedia') String? wikipedia});

  @override
  $PatchBeanCopyWith<$Res>? get patch;
  @override
  $RedditBeanCopyWith<$Res>? get reddit;
  @override
  $FlickrBeanCopyWith<$Res>? get flickr;
}

/// @nodoc
class __$$LinksBeanImplCopyWithImpl<$Res>
    extends _$LinksBeanCopyWithImpl<$Res, _$LinksBeanImpl>
    implements _$$LinksBeanImplCopyWith<$Res> {
  __$$LinksBeanImplCopyWithImpl(
      _$LinksBeanImpl _value, $Res Function(_$LinksBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patch = freezed,
    Object? reddit = freezed,
    Object? flickr = freezed,
    Object? webcast = freezed,
    Object? youtubeId = freezed,
    Object? article = freezed,
    Object? wikipedia = freezed,
  }) {
    return _then(_$LinksBeanImpl(
      patch: freezed == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as PatchBean?,
      reddit: freezed == reddit
          ? _value.reddit
          : reddit // ignore: cast_nullable_to_non_nullable
              as RedditBean?,
      flickr: freezed == flickr
          ? _value.flickr
          : flickr // ignore: cast_nullable_to_non_nullable
              as FlickrBean?,
      webcast: freezed == webcast
          ? _value.webcast
          : webcast // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksBeanImpl implements _LinksBean {
  const _$LinksBeanImpl(
      {@JsonKey(name: 'patch') this.patch,
      @JsonKey(name: 'reddit') this.reddit,
      @JsonKey(name: 'flickr') this.flickr,
      @JsonKey(name: 'webcast') this.webcast,
      @JsonKey(name: 'youtube_id') this.youtubeId,
      @JsonKey(name: 'article') this.article,
      @JsonKey(name: 'wikipedia') this.wikipedia});

  factory _$LinksBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksBeanImplFromJson(json);

  @override
  @JsonKey(name: 'patch')
  final PatchBean? patch;
  @override
  @JsonKey(name: 'reddit')
  final RedditBean? reddit;
  @override
  @JsonKey(name: 'flickr')
  final FlickrBean? flickr;
  @override
  @JsonKey(name: 'webcast')
  final String? webcast;
  @override
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  @override
  @JsonKey(name: 'article')
  final String? article;
  @override
  @JsonKey(name: 'wikipedia')
  final String? wikipedia;

  @override
  String toString() {
    return 'LinksBean(patch: $patch, reddit: $reddit, flickr: $flickr, webcast: $webcast, youtubeId: $youtubeId, article: $article, wikipedia: $wikipedia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksBeanImpl &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.reddit, reddit) || other.reddit == reddit) &&
            (identical(other.flickr, flickr) || other.flickr == flickr) &&
            (identical(other.webcast, webcast) || other.webcast == webcast) &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patch, reddit, flickr, webcast,
      youtubeId, article, wikipedia);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksBeanImplCopyWith<_$LinksBeanImpl> get copyWith =>
      __$$LinksBeanImplCopyWithImpl<_$LinksBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksBeanImplToJson(
      this,
    );
  }
}

abstract class _LinksBean implements LinksBean {
  const factory _LinksBean(
      {@JsonKey(name: 'patch') final PatchBean? patch,
      @JsonKey(name: 'reddit') final RedditBean? reddit,
      @JsonKey(name: 'flickr') final FlickrBean? flickr,
      @JsonKey(name: 'webcast') final String? webcast,
      @JsonKey(name: 'youtube_id') final String? youtubeId,
      @JsonKey(name: 'article') final String? article,
      @JsonKey(name: 'wikipedia') final String? wikipedia}) = _$LinksBeanImpl;

  factory _LinksBean.fromJson(Map<String, dynamic> json) =
      _$LinksBeanImpl.fromJson;

  @override
  @JsonKey(name: 'patch')
  PatchBean? get patch;
  @override
  @JsonKey(name: 'reddit')
  RedditBean? get reddit;
  @override
  @JsonKey(name: 'flickr')
  FlickrBean? get flickr;
  @override
  @JsonKey(name: 'webcast')
  String? get webcast;
  @override
  @JsonKey(name: 'youtube_id')
  String? get youtubeId;
  @override
  @JsonKey(name: 'article')
  String? get article;
  @override
  @JsonKey(name: 'wikipedia')
  String? get wikipedia;
  @override
  @JsonKey(ignore: true)
  _$$LinksBeanImplCopyWith<_$LinksBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlickrBean _$FlickrBeanFromJson(Map<String, dynamic> json) {
  return _FlickrBean.fromJson(json);
}

/// @nodoc
mixin _$FlickrBean {
  @JsonKey(name: 'small')
  List<dynamic>? get small => throw _privateConstructorUsedError;
  @JsonKey(name: 'original')
  List<dynamic>? get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlickrBeanCopyWith<FlickrBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlickrBeanCopyWith<$Res> {
  factory $FlickrBeanCopyWith(
          FlickrBean value, $Res Function(FlickrBean) then) =
      _$FlickrBeanCopyWithImpl<$Res, FlickrBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'small') List<dynamic>? small,
      @JsonKey(name: 'original') List<dynamic>? original});
}

/// @nodoc
class _$FlickrBeanCopyWithImpl<$Res, $Val extends FlickrBean>
    implements $FlickrBeanCopyWith<$Res> {
  _$FlickrBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? original = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlickrBeanImplCopyWith<$Res>
    implements $FlickrBeanCopyWith<$Res> {
  factory _$$FlickrBeanImplCopyWith(
          _$FlickrBeanImpl value, $Res Function(_$FlickrBeanImpl) then) =
      __$$FlickrBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'small') List<dynamic>? small,
      @JsonKey(name: 'original') List<dynamic>? original});
}

/// @nodoc
class __$$FlickrBeanImplCopyWithImpl<$Res>
    extends _$FlickrBeanCopyWithImpl<$Res, _$FlickrBeanImpl>
    implements _$$FlickrBeanImplCopyWith<$Res> {
  __$$FlickrBeanImplCopyWithImpl(
      _$FlickrBeanImpl _value, $Res Function(_$FlickrBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? original = freezed,
  }) {
    return _then(_$FlickrBeanImpl(
      small: freezed == small
          ? _value._small
          : small // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      original: freezed == original
          ? _value._original
          : original // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlickrBeanImpl implements _FlickrBean {
  const _$FlickrBeanImpl(
      {@JsonKey(name: 'small') final List<dynamic>? small,
      @JsonKey(name: 'original') final List<dynamic>? original})
      : _small = small,
        _original = original;

  factory _$FlickrBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlickrBeanImplFromJson(json);

  final List<dynamic>? _small;
  @override
  @JsonKey(name: 'small')
  List<dynamic>? get small {
    final value = _small;
    if (value == null) return null;
    if (_small is EqualUnmodifiableListView) return _small;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _original;
  @override
  @JsonKey(name: 'original')
  List<dynamic>? get original {
    final value = _original;
    if (value == null) return null;
    if (_original is EqualUnmodifiableListView) return _original;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FlickrBean(small: $small, original: $original)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlickrBeanImpl &&
            const DeepCollectionEquality().equals(other._small, _small) &&
            const DeepCollectionEquality().equals(other._original, _original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_small),
      const DeepCollectionEquality().hash(_original));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlickrBeanImplCopyWith<_$FlickrBeanImpl> get copyWith =>
      __$$FlickrBeanImplCopyWithImpl<_$FlickrBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlickrBeanImplToJson(
      this,
    );
  }
}

abstract class _FlickrBean implements FlickrBean {
  const factory _FlickrBean(
          {@JsonKey(name: 'small') final List<dynamic>? small,
          @JsonKey(name: 'original') final List<dynamic>? original}) =
      _$FlickrBeanImpl;

  factory _FlickrBean.fromJson(Map<String, dynamic> json) =
      _$FlickrBeanImpl.fromJson;

  @override
  @JsonKey(name: 'small')
  List<dynamic>? get small;
  @override
  @JsonKey(name: 'original')
  List<dynamic>? get original;
  @override
  @JsonKey(ignore: true)
  _$$FlickrBeanImplCopyWith<_$FlickrBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RedditBean _$RedditBeanFromJson(Map<String, dynamic> json) {
  return _RedditBean.fromJson(json);
}

/// @nodoc
mixin _$RedditBean {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditBeanCopyWith<$Res> {
  factory $RedditBeanCopyWith(
          RedditBean value, $Res Function(RedditBean) then) =
      _$RedditBeanCopyWithImpl<$Res, RedditBean>;
}

/// @nodoc
class _$RedditBeanCopyWithImpl<$Res, $Val extends RedditBean>
    implements $RedditBeanCopyWith<$Res> {
  _$RedditBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RedditBeanImplCopyWith<$Res> {
  factory _$$RedditBeanImplCopyWith(
          _$RedditBeanImpl value, $Res Function(_$RedditBeanImpl) then) =
      __$$RedditBeanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RedditBeanImplCopyWithImpl<$Res>
    extends _$RedditBeanCopyWithImpl<$Res, _$RedditBeanImpl>
    implements _$$RedditBeanImplCopyWith<$Res> {
  __$$RedditBeanImplCopyWithImpl(
      _$RedditBeanImpl _value, $Res Function(_$RedditBeanImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RedditBeanImpl implements _RedditBean {
  const _$RedditBeanImpl();

  factory _$RedditBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedditBeanImplFromJson(json);

  @override
  String toString() {
    return 'RedditBean()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RedditBeanImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$RedditBeanImplToJson(
      this,
    );
  }
}

abstract class _RedditBean implements RedditBean {
  const factory _RedditBean() = _$RedditBeanImpl;

  factory _RedditBean.fromJson(Map<String, dynamic> json) =
      _$RedditBeanImpl.fromJson;
}

PatchBean _$PatchBeanFromJson(Map<String, dynamic> json) {
  return _PatchBean.fromJson(json);
}

/// @nodoc
mixin _$PatchBean {
  @JsonKey(name: 'small')
  String? get small => throw _privateConstructorUsedError;
  @JsonKey(name: 'large')
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchBeanCopyWith<PatchBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchBeanCopyWith<$Res> {
  factory $PatchBeanCopyWith(PatchBean value, $Res Function(PatchBean) then) =
      _$PatchBeanCopyWithImpl<$Res, PatchBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'small') String? small,
      @JsonKey(name: 'large') String? large});
}

/// @nodoc
class _$PatchBeanCopyWithImpl<$Res, $Val extends PatchBean>
    implements $PatchBeanCopyWith<$Res> {
  _$PatchBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatchBeanImplCopyWith<$Res>
    implements $PatchBeanCopyWith<$Res> {
  factory _$$PatchBeanImplCopyWith(
          _$PatchBeanImpl value, $Res Function(_$PatchBeanImpl) then) =
      __$$PatchBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'small') String? small,
      @JsonKey(name: 'large') String? large});
}

/// @nodoc
class __$$PatchBeanImplCopyWithImpl<$Res>
    extends _$PatchBeanCopyWithImpl<$Res, _$PatchBeanImpl>
    implements _$$PatchBeanImplCopyWith<$Res> {
  __$$PatchBeanImplCopyWithImpl(
      _$PatchBeanImpl _value, $Res Function(_$PatchBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_$PatchBeanImpl(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchBeanImpl implements _PatchBean {
  const _$PatchBeanImpl(
      {@JsonKey(name: 'small') this.small, @JsonKey(name: 'large') this.large});

  factory _$PatchBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchBeanImplFromJson(json);

  @override
  @JsonKey(name: 'small')
  final String? small;
  @override
  @JsonKey(name: 'large')
  final String? large;

  @override
  String toString() {
    return 'PatchBean(small: $small, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchBeanImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchBeanImplCopyWith<_$PatchBeanImpl> get copyWith =>
      __$$PatchBeanImplCopyWithImpl<_$PatchBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchBeanImplToJson(
      this,
    );
  }
}

abstract class _PatchBean implements PatchBean {
  const factory _PatchBean(
      {@JsonKey(name: 'small') final String? small,
      @JsonKey(name: 'large') final String? large}) = _$PatchBeanImpl;

  factory _PatchBean.fromJson(Map<String, dynamic> json) =
      _$PatchBeanImpl.fromJson;

  @override
  @JsonKey(name: 'small')
  String? get small;
  @override
  @JsonKey(name: 'large')
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$PatchBeanImplCopyWith<_$PatchBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FairingsBean _$FairingsBeanFromJson(Map<String, dynamic> json) {
  return _FairingsBean.fromJson(json);
}

/// @nodoc
mixin _$FairingsBean {
  @JsonKey(name: 'reused')
  bool? get reused => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovery_attempt')
  bool? get recoveryAttempt => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovered')
  bool? get recovered => throw _privateConstructorUsedError;
  @JsonKey(name: 'ships')
  List<dynamic>? get ships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FairingsBeanCopyWith<FairingsBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FairingsBeanCopyWith<$Res> {
  factory $FairingsBeanCopyWith(
          FairingsBean value, $Res Function(FairingsBean) then) =
      _$FairingsBeanCopyWithImpl<$Res, FairingsBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
      @JsonKey(name: 'recovered') bool? recovered,
      @JsonKey(name: 'ships') List<dynamic>? ships});
}

/// @nodoc
class _$FairingsBeanCopyWithImpl<$Res, $Val extends FairingsBean>
    implements $FairingsBeanCopyWith<$Res> {
  _$FairingsBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reused = freezed,
    Object? recoveryAttempt = freezed,
    Object? recovered = freezed,
    Object? ships = freezed,
  }) {
    return _then(_value.copyWith(
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      recoveryAttempt: freezed == recoveryAttempt
          ? _value.recoveryAttempt
          : recoveryAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      recovered: freezed == recovered
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      ships: freezed == ships
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FairingsBeanImplCopyWith<$Res>
    implements $FairingsBeanCopyWith<$Res> {
  factory _$$FairingsBeanImplCopyWith(
          _$FairingsBeanImpl value, $Res Function(_$FairingsBeanImpl) then) =
      __$$FairingsBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
      @JsonKey(name: 'recovered') bool? recovered,
      @JsonKey(name: 'ships') List<dynamic>? ships});
}

/// @nodoc
class __$$FairingsBeanImplCopyWithImpl<$Res>
    extends _$FairingsBeanCopyWithImpl<$Res, _$FairingsBeanImpl>
    implements _$$FairingsBeanImplCopyWith<$Res> {
  __$$FairingsBeanImplCopyWithImpl(
      _$FairingsBeanImpl _value, $Res Function(_$FairingsBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reused = freezed,
    Object? recoveryAttempt = freezed,
    Object? recovered = freezed,
    Object? ships = freezed,
  }) {
    return _then(_$FairingsBeanImpl(
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      recoveryAttempt: freezed == recoveryAttempt
          ? _value.recoveryAttempt
          : recoveryAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      recovered: freezed == recovered
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      ships: freezed == ships
          ? _value._ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FairingsBeanImpl implements _FairingsBean {
  const _$FairingsBeanImpl(
      {@JsonKey(name: 'reused') this.reused,
      @JsonKey(name: 'recovery_attempt') this.recoveryAttempt,
      @JsonKey(name: 'recovered') this.recovered,
      @JsonKey(name: 'ships') final List<dynamic>? ships})
      : _ships = ships;

  factory _$FairingsBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$FairingsBeanImplFromJson(json);

  @override
  @JsonKey(name: 'reused')
  final bool? reused;
  @override
  @JsonKey(name: 'recovery_attempt')
  final bool? recoveryAttempt;
  @override
  @JsonKey(name: 'recovered')
  final bool? recovered;
  final List<dynamic>? _ships;
  @override
  @JsonKey(name: 'ships')
  List<dynamic>? get ships {
    final value = _ships;
    if (value == null) return null;
    if (_ships is EqualUnmodifiableListView) return _ships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FairingsBean(reused: $reused, recoveryAttempt: $recoveryAttempt, recovered: $recovered, ships: $ships)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FairingsBeanImpl &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.recoveryAttempt, recoveryAttempt) ||
                other.recoveryAttempt == recoveryAttempt) &&
            (identical(other.recovered, recovered) ||
                other.recovered == recovered) &&
            const DeepCollectionEquality().equals(other._ships, _ships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reused, recoveryAttempt,
      recovered, const DeepCollectionEquality().hash(_ships));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FairingsBeanImplCopyWith<_$FairingsBeanImpl> get copyWith =>
      __$$FairingsBeanImplCopyWithImpl<_$FairingsBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FairingsBeanImplToJson(
      this,
    );
  }
}

abstract class _FairingsBean implements FairingsBean {
  const factory _FairingsBean(
      {@JsonKey(name: 'reused') final bool? reused,
      @JsonKey(name: 'recovery_attempt') final bool? recoveryAttempt,
      @JsonKey(name: 'recovered') final bool? recovered,
      @JsonKey(name: 'ships') final List<dynamic>? ships}) = _$FairingsBeanImpl;

  factory _FairingsBean.fromJson(Map<String, dynamic> json) =
      _$FairingsBeanImpl.fromJson;

  @override
  @JsonKey(name: 'reused')
  bool? get reused;
  @override
  @JsonKey(name: 'recovery_attempt')
  bool? get recoveryAttempt;
  @override
  @JsonKey(name: 'recovered')
  bool? get recovered;
  @override
  @JsonKey(name: 'ships')
  List<dynamic>? get ships;
  @override
  @JsonKey(ignore: true)
  _$$FairingsBeanImplCopyWith<_$FairingsBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
