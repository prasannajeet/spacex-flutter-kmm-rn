// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacex_launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpacexLaunchesImpl _$$SpacexLaunchesImplFromJson(Map<String, dynamic> json) =>
    _$SpacexLaunchesImpl(
      fairings: json['fairings'] == null
          ? null
          : FairingsBean.fromJson(json['fairings'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : LinksBean.fromJson(json['links'] as Map<String, dynamic>),
      staticFireDateUtc: json['static_fire_date_utc'] as String?,
      staticFireDateUnix: json['static_fire_date_unix'] as int?,
      net: json['net'] as bool?,
      window: json['window'] as int?,
      rocket: json['rocket'] as String?,
      success: json['success'] as bool?,
      failures: (json['failures'] as List<dynamic>?)
          ?.map((e) => FailuresBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['details'] as String?,
      crew: json['crew'] as List<dynamic>?,
      ships: json['ships'] as List<dynamic>?,
      capsules: json['capsules'] as List<dynamic>?,
      payloads: (json['payloads'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      launchpad: json['launchpad'] as String?,
      flightNumber: json['flight_number'] as int?,
      name: json['name'] as String?,
      dateUtc: json['date_utc'] as String?,
      dateUnix: json['date_unix'] as int?,
      dateLocal: json['date_local'] as String?,
      datePrecision: json['date_precision'] as String?,
      upcoming: json['upcoming'] as bool?,
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => CoresBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      autoUpdate: json['auto_update'] as bool?,
      tbd: json['tbd'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$SpacexLaunchesImplToJson(
        _$SpacexLaunchesImpl instance) =>
    <String, dynamic>{
      'fairings': instance.fairings,
      'links': instance.links,
      'static_fire_date_utc': instance.staticFireDateUtc,
      'static_fire_date_unix': instance.staticFireDateUnix,
      'net': instance.net,
      'window': instance.window,
      'rocket': instance.rocket,
      'success': instance.success,
      'failures': instance.failures,
      'details': instance.details,
      'crew': instance.crew,
      'ships': instance.ships,
      'capsules': instance.capsules,
      'payloads': instance.payloads,
      'launchpad': instance.launchpad,
      'flight_number': instance.flightNumber,
      'name': instance.name,
      'date_utc': instance.dateUtc,
      'date_unix': instance.dateUnix,
      'date_local': instance.dateLocal,
      'date_precision': instance.datePrecision,
      'upcoming': instance.upcoming,
      'cores': instance.cores,
      'auto_update': instance.autoUpdate,
      'tbd': instance.tbd,
      'id': instance.id,
    };

_$CoresBeanImpl _$$CoresBeanImplFromJson(Map<String, dynamic> json) =>
    _$CoresBeanImpl(
      core: json['core'] as String?,
      flight: json['flight'] as int?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landingAttempt: json['landing_attempt'] as bool?,
    );

Map<String, dynamic> _$$CoresBeanImplToJson(_$CoresBeanImpl instance) =>
    <String, dynamic>{
      'core': instance.core,
      'flight': instance.flight,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landing_attempt': instance.landingAttempt,
    };

_$FailuresBeanImpl _$$FailuresBeanImplFromJson(Map<String, dynamic> json) =>
    _$FailuresBeanImpl(
      time: json['time'] as int?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$FailuresBeanImplToJson(_$FailuresBeanImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'reason': instance.reason,
    };

_$LinksBeanImpl _$$LinksBeanImplFromJson(Map<String, dynamic> json) =>
    _$LinksBeanImpl(
      patch: json['patch'] == null
          ? null
          : PatchBean.fromJson(json['patch'] as Map<String, dynamic>),
      reddit: json['reddit'] == null
          ? null
          : RedditBean.fromJson(json['reddit'] as Map<String, dynamic>),
      flickr: json['flickr'] == null
          ? null
          : FlickrBean.fromJson(json['flickr'] as Map<String, dynamic>),
      webcast: json['webcast'] as String?,
      youtubeId: json['youtube_id'] as String?,
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String?,
    );

Map<String, dynamic> _$$LinksBeanImplToJson(_$LinksBeanImpl instance) =>
    <String, dynamic>{
      'patch': instance.patch,
      'reddit': instance.reddit,
      'flickr': instance.flickr,
      'webcast': instance.webcast,
      'youtube_id': instance.youtubeId,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

_$FlickrBeanImpl _$$FlickrBeanImplFromJson(Map<String, dynamic> json) =>
    _$FlickrBeanImpl(
      small: json['small'] as List<dynamic>?,
      original: json['original'] as List<dynamic>?,
    );

Map<String, dynamic> _$$FlickrBeanImplToJson(_$FlickrBeanImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'original': instance.original,
    };

_$RedditBeanImpl _$$RedditBeanImplFromJson(Map<String, dynamic> json) =>
    _$RedditBeanImpl();

Map<String, dynamic> _$$RedditBeanImplToJson(_$RedditBeanImpl instance) =>
    <String, dynamic>{};

_$PatchBeanImpl _$$PatchBeanImplFromJson(Map<String, dynamic> json) =>
    _$PatchBeanImpl(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$$PatchBeanImplToJson(_$PatchBeanImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

_$FairingsBeanImpl _$$FairingsBeanImplFromJson(Map<String, dynamic> json) =>
    _$FairingsBeanImpl(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recovery_attempt'] as bool?,
      recovered: json['recovered'] as bool?,
      ships: json['ships'] as List<dynamic>?,
    );

Map<String, dynamic> _$$FairingsBeanImplToJson(_$FairingsBeanImpl instance) =>
    <String, dynamic>{
      'reused': instance.reused,
      'recovery_attempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
      'ships': instance.ships,
    };
