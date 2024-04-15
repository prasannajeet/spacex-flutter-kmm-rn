import 'package:freezed_annotation/freezed_annotation.dart';

part 'spacex_rockets.freezed.dart';
part 'spacex_rockets.g.dart';


@freezed
class SpaceXRockets with _$SpaceXRockets {
  const factory SpaceXRockets({
    @JsonKey(name: 'height') HeightBean? height,
    @JsonKey(name: 'diameter') DiameterBean? diameter,
    @JsonKey(name: 'mass') MassBean? mass,
    @JsonKey(name: 'first_stage') FirstStageBean? firstStage,
    @JsonKey(name: 'second_stage') SecondStageBean? secondStage,
    @JsonKey(name: 'engines') EnginesBean? engines,
    @JsonKey(name: 'landing_legs') LandingLegsBean? landingLegs,
    @JsonKey(name: 'payload_weights') List<PayloadWeightsBean>? payloadWeights,
    @JsonKey(name: 'flickr_images') List<String>? flickrImages,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'active') bool? active,
    @JsonKey(name: 'stages') int? stages,
    @JsonKey(name: 'boosters') int? boosters,
    @JsonKey(name: 'cost_per_launch') int? costPerLaunch,
    @JsonKey(name: 'success_rate_pct') int? successRatePct,
    @JsonKey(name: 'first_flight') String? firstFlight,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'company') String? company,
    @JsonKey(name: 'wikipedia') String? wikipedia,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'id') String? id,
  }) = _Spacex_rockets;

  factory SpaceXRockets.fromJson(Map<String, dynamic> json) => _$SpaceXRocketsFromJson(json);
}


@freezed
class PayloadWeightsBean with _$PayloadWeightsBean {
  const factory PayloadWeightsBean({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'kg') int? kg,
    @JsonKey(name: 'lb') int? lb,
  }) = _PayloadWeightsBean;

  factory PayloadWeightsBean.fromJson(Map<String, dynamic> json) => _$PayloadWeightsBeanFromJson(json);
}

@freezed
class LandingLegsBean with _$LandingLegsBean {
  const factory LandingLegsBean({
    @JsonKey(name: 'number') int? number,
  }) = _LandingLegsBean;

  factory LandingLegsBean.fromJson(Map<String, dynamic> json) => _$LandingLegsBeanFromJson(json);
}

@freezed
class EnginesBean with _$EnginesBean {
  const factory EnginesBean({
    @JsonKey(name: 'isp') IspBean? isp,
    @JsonKey(name: 'thrust_sea_level') ThrustSeaLevelBean? thrustSeaLevel,
    @JsonKey(name: 'thrust_vacuum') ThrustVacuumBean? thrustVacuum,
    @JsonKey(name: 'number') int? number,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'version') String? version,
    @JsonKey(name: 'layout') String? layout,
    @JsonKey(name: 'engine_loss_max') int? engineLossMax,
    @JsonKey(name: 'propellant_1') String? propellant1,
    @JsonKey(name: 'propellant_2') String? propellant2,
    @JsonKey(name: 'thrust_to_weight') int? thrustToWeight,
  }) = _EnginesBean;

  factory EnginesBean.fromJson(Map<String, dynamic> json) => _$EnginesBeanFromJson(json);
}

@freezed
@JsonSerializable()
class ThrustVacuumBean with _$ThrustVacuumBean {
  const factory ThrustVacuumBean({
    @JsonKey(name: 'kN') int? kN,
    @JsonKey(name: 'lbf') int? lbf,
  }) = _ThrustVacuumBean;

  factory ThrustVacuumBean.fromJson(Map<String, dynamic> json) => _$ThrustVacuumBeanFromJson(json);
}

@freezed
@JsonSerializable()
class ThrustSeaLevelBean with _$ThrustSeaLevelBean {
  const factory ThrustSeaLevelBean({
    @JsonKey(name: 'kN') int? kN,
    @JsonKey(name: 'lbf') int? lbf,
  }) = _ThrustSeaLevelBean;

  factory ThrustSeaLevelBean.fromJson(Map<String, dynamic> json) => _$ThrustSeaLevelBeanFromJson(json);
}

@freezed
class IspBean with _$IspBean {
  const factory IspBean({
    @JsonKey(name: 'sea_level') int? seaLevel,
    @JsonKey(name: 'vacuum') int? vacuum,
  }) = _IspBean;

  factory IspBean.fromJson(Map<String, dynamic> json) => _$IspBeanFromJson(json);
}

@freezed
class SecondStageBean with _$SecondStageBean {
  const factory SecondStageBean({
    @JsonKey(name: 'thrust') ThrustBean? thrust,
    @JsonKey(name: 'payloads') PayloadsBean? payloads,
    @JsonKey(name: 'reusable') bool? reusable,
    @JsonKey(name: 'engines') int? engines,
    @JsonKey(name: 'fuel_amount_tons') double? fuelAmountTons,
    @JsonKey(name: 'burn_time_sec') int? burnTimeSec,
  }) = _SecondStageBean;

  factory SecondStageBean.fromJson(Map<String, dynamic> json) => _$SecondStageBeanFromJson(json);
}

@freezed
class PayloadsBean with _$PayloadsBean {
  const factory PayloadsBean({
    @JsonKey(name: 'composite_fairing') CompositeFairingBean? compositeFairing,
    @JsonKey(name: 'option_1') String? option1,
  }) = _PayloadsBean;

  factory PayloadsBean.fromJson(Map<String, dynamic> json) => _$PayloadsBeanFromJson(json);
}

@freezed
class CompositeFairingBean with _$CompositeFairingBean {
  const factory CompositeFairingBean({
    @JsonKey(name: 'height') HeightBean? height,
    @JsonKey(name: 'diameter') DiameterBean? diameter,
  }) = _CompositeFairingBean;

  factory CompositeFairingBean.fromJson(Map<String, dynamic> json) => _$CompositeFairingBeanFromJson(json);
}

@freezed
@JsonSerializable()
class DiameterBean with _$DiameterBean {
  const factory DiameterBean({
    @JsonKey(name: 'meters') double? meters,
    @JsonKey(name: 'feet') double? feet,
  }) = _DiameterBean;

  factory DiameterBean.fromJson(Map<String, dynamic> json) => _$DiameterBeanFromJson(json);
}

@freezed
@JsonSerializable()
class HeightBean with _$HeightBean {
  const factory HeightBean({
    @JsonKey(name: 'meters') double? meters,
    @JsonKey(name: 'feet') double? feet,
  }) = _HeightBean;

  factory HeightBean.fromJson(Map<String, dynamic> json) => _$HeightBeanFromJson(json);
}

@freezed
@JsonSerializable()
class ThrustBean with _$ThrustBean {
  const factory ThrustBean({
    @JsonKey(name: 'kN') int? kN,
    @JsonKey(name: 'lbf') int? lbf,
  }) = _ThrustBean;

  factory ThrustBean.fromJson(Map<String, dynamic> json) => _$ThrustBeanFromJson(json);
}

@freezed
@JsonSerializable()
class FirstStageBean with _$FirstStageBean {
  const factory FirstStageBean({
    @JsonKey(name: 'thrust_sea_level') ThrustSeaLevelBean? thrustSeaLevel,
    @JsonKey(name: 'thrust_vacuum') ThrustVacuumBean? thrustVacuum,
    @JsonKey(name: 'reusable') bool? reusable,
    @JsonKey(name: 'engines') int? engines,
    @JsonKey(name: 'fuel_amount_tons') double? fuelAmountTons,
    @JsonKey(name: 'burn_time_sec') int? burnTimeSec,
  }) = _FirstStageBean;

  factory FirstStageBean.fromJson(Map<String, dynamic> json) => _$FirstStageBeanFromJson(json);
}

@freezed
@JsonSerializable()
class MassBean with _$MassBean {
  const factory MassBean({
    @JsonKey(name: 'kg') int? kg,
    @JsonKey(name: 'lb') int? lb,
  }) = _MassBean;

  factory MassBean.fromJson(Map<String, dynamic> json) => _$MassBeanFromJson(json);
}
