import 'package:freezed_annotation/freezed_annotation.dart';

part 'spacex_launches.freezed.dart';
part 'spacex_launches.g.dart';

@freezed
class SpacexLaunches with _$SpacexLaunches {
  const factory SpacexLaunches({
    @JsonKey(name: 'fairings') FairingsBean? fairings,
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
    @JsonKey(name: 'id') String? id,
  }) = _SpacexLaunches;

  factory SpacexLaunches.fromJson(Map<String, dynamic> json) => _$SpacexLaunchesFromJson(json);
}

@freezed
class CoresBean with _$CoresBean {
  const factory CoresBean({
    @JsonKey(name: 'core') String? core,
    @JsonKey(name: 'flight') int? flight,
    @JsonKey(name: 'gridfins') bool? gridfins,
    @JsonKey(name: 'legs') bool? legs,
    @JsonKey(name: 'reused') bool? reused,
    @JsonKey(name: 'landing_attempt') bool? landingAttempt,
  }) = _CoresBean;

  factory CoresBean.fromJson(Map<String, Object?> json) => _$CoresBeanFromJson(json);
}

@freezed
class FailuresBean with _$FailuresBean {
  const factory FailuresBean({
    @JsonKey(name: 'time') int? time,
    @JsonKey(name: 'reason') String? reason,
  }) = _FailuresBean;

  factory FailuresBean.fromJson(Map<String, dynamic> json) => _$FailuresBeanFromJson(json);
}

@freezed
class LinksBean with _$LinksBean {
  const factory LinksBean({
    @JsonKey(name: 'patch') PatchBean? patch,
    @JsonKey(name: 'reddit') RedditBean? reddit,
    @JsonKey(name: 'flickr') FlickrBean? flickr,
    @JsonKey(name: 'webcast') String? webcast,
    @JsonKey(name: 'youtube_id') String? youtubeId,
    @JsonKey(name: 'article') String? article,
    @JsonKey(name: 'wikipedia') String? wikipedia,
  }) = _LinksBean;

  factory LinksBean.fromJson(Map<String, dynamic> json) => _$LinksBeanFromJson(json);
}

@freezed
class FlickrBean with _$FlickrBean {
  const factory FlickrBean({
    @JsonKey(name: 'small') List<dynamic>? small,
    @JsonKey(name: 'original') List<dynamic>? original,
  }) = _FlickrBean;

  factory FlickrBean.fromJson(Map<String, dynamic> json) => _$FlickrBeanFromJson(json);
}

@freezed
class RedditBean with _$RedditBean {
  const factory RedditBean() = _RedditBean;

  factory RedditBean.fromJson(Map<String, dynamic> json) => _$RedditBeanFromJson(json);
}

@freezed
class PatchBean with _$PatchBean {
  const factory PatchBean({
    @JsonKey(name: 'small') String? small,
    @JsonKey(name: 'large') String? large,
  }) = _PatchBean;

  factory PatchBean.fromJson(Map<String, dynamic> json) => _$PatchBeanFromJson(json);
}

@freezed
class FairingsBean with _$FairingsBean {
  const factory FairingsBean({
    @JsonKey(name: 'reused') bool? reused,
    @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
    @JsonKey(name: 'recovered') bool? recovered,
    @JsonKey(name: 'ships') List<dynamic>? ships,
  }) = _FairingsBean;

  factory FairingsBean.fromJson(Map<String, dynamic> json) => _$FairingsBeanFromJson(json);
}

