import 'package:freezed_annotation/freezed_annotation.dart';

part 'spacex_rocket.freezed.dart';
part 'spacex_rocket.g.dart';

@freezed
class Spacex_rocket with _$Spacex_rocket {
  const factory Spacex_rocket({
    @JsonKey(name: 'height') HeightBean? height,
    @JsonKey(name: 'diameter') DiameterBean? diameter,
    @JsonKey(name: 'mass') MassBean? mass,
    @JsonKey(name: 'first_stage') First_stageBean? firstStage,
    @JsonKey(name: 'second_stage') Second_stageBean? secondStage,
    @JsonKey(name: 'engines') EnginesBean? engines,
    @JsonKey(name: 'landing_legs') Landing_legsBean? landingLegs,
    @JsonKey(name: 'payload_weights') List<Payload_weightsBean>? payloadWeights,
    @JsonKey(name: 'flickr_images') List<String>? flickrImages,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'active') bool? active,
    @JsonKey(name: 'stages') num? stages,
    @JsonKey(name: 'boosters') num? boosters,
    @JsonKey(name: 'cost_per_launch') num? costPerLaunch,
    @JsonKey(name: 'success_rate_pct') num? successRatePct,
    @JsonKey(name: 'first_flight') String? firstFlight,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'company') String? company,
    @JsonKey(name: 'wikipedia') String? wikipedia,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'id') String? id,
  }) = _Spacex_rocket;

  factory Spacex_rocket.fromJson(Map<String, Object?> json) => _$Spacex_rocketFromJson(json);
}

@freezed
class Payload_weightsBean with _$Payload_weightsBean {
  const factory Payload_weightsBean({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'kg') num? kg,
    @JsonKey(name: 'lb') num? lb,
  }) = _Payload_weightsBean;

  factory Payload_weightsBean.fromJson(Map<String, Object?> json) => _$Payload_weightsBeanFromJson(json);
}

@freezed
class Landing_legsBean with _$Landing_legsBean {
  const factory Landing_legsBean({
    @JsonKey(name: 'number') num? number,
  }) = _Landing_legsBean;

  factory Landing_legsBean.fromJson(Map<String, Object?> json) => _$Landing_legsBeanFromJson(json);
}

@freezed
class EnginesBean with _$EnginesBean {
  const factory EnginesBean({
    @JsonKey(name: 'isp') IspBean? isp,
    @JsonKey(name: 'thrust_sea_level') Thrust_sea_levelBean? thrustSeaLevel,
    @JsonKey(name: 'thrust_vacuum') Thrust_vacuumBean? thrustVacuum,
    @JsonKey(name: 'number') num? number,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'version') String? version,
    @JsonKey(name: 'layout') String? layout,
    @JsonKey(name: 'engine_loss_max') num? engineLossMax,
    @JsonKey(name: 'propellant_1') String? propellant1,
    @JsonKey(name: 'propellant_2') String? propellant2,
    @JsonKey(name: 'thrust_to_weight') num? thrustToWeight,
  }) = _EnginesBean;

  factory EnginesBean.fromJson(Map<String, Object?> json) => _$EnginesBeanFromJson(json);
}

@freezed
class Thrust_vacuumBean with _$Thrust_vacuumBean {
  const factory Thrust_vacuumBean({
    @JsonKey(name: 'kN') num? kN,
    @JsonKey(name: 'lbf') num? lbf,
  }) = _Thrust_vacuumBean;

  factory Thrust_vacuumBean.fromJson(Map<String, Object?> json) => _$Thrust_vacuumBeanFromJson(json);
}

@freezed
class Thrust_sea_levelBean with _$Thrust_sea_levelBean {
  const factory Thrust_sea_levelBean({
    @JsonKey(name: 'kN') num? kN,
    @JsonKey(name: 'lbf') num? lbf,
  }) = _Thrust_sea_levelBean;

  factory Thrust_sea_levelBean.fromJson(Map<String, Object?> json) => _$Thrust_sea_levelBeanFromJson(json);
}

@freezed
class IspBean with _$IspBean {
  const factory IspBean({
    @JsonKey(name: 'sea_level') num? seaLevel,
    @JsonKey(name: 'vacuum') num? vacuum,
  }) = _IspBean;

  factory IspBean.fromJson(Map<String, Object?> json) => _$IspBeanFromJson(json);
}

@freezed
class Second_stageBean with _$Second_stageBean {
  const factory Second_stageBean({
    @JsonKey(name: 'thrust') ThrustBean? thrust,
    @JsonKey(name: 'payloads') PayloadsBean? payloads,
    @JsonKey(name: 'reusable') bool? reusable,
    @JsonKey(name: 'engines') num? engines,
    @JsonKey(name: 'fuel_amount_tons') num? fuelAmountTons,
    @JsonKey(name: 'burn_time_sec') num? burnTimeSec,
  }) = _Second_stageBean;

  factory Second_stageBean.fromJson(Map<String, Object?> json) => _$Second_stageBeanFromJson(json);
}

@freezed
class PayloadsBean with _$PayloadsBean {
  const factory PayloadsBean({
    @JsonKey(name: 'composite_fairing') Composite_fairingBean? compositeFairing,
    @JsonKey(name: 'option_1') String? option1,
  }) = _PayloadsBean;

  factory PayloadsBean.fromJson(Map<String, Object?> json) => _$PayloadsBeanFromJson(json);
}

@freezed
class Composite_fairingBean with _$Composite_fairingBean {
  const factory Composite_fairingBean({
    @JsonKey(name: 'height') HeightBean? height,
    @JsonKey(name: 'diameter') DiameterBean? diameter,
  }) = _Composite_fairingBean;

  factory Composite_fairingBean.fromJson(Map<String, Object?> json) => _$Composite_fairingBeanFromJson(json);
}

@freezed
class DiameterBean with _$DiameterBean {
  const factory DiameterBean({
    @JsonKey(name: 'meters') num? meters,
    @JsonKey(name: 'feet') num? feet,
  }) = _DiameterBean;

  factory DiameterBean.fromJson(Map<String, Object?> json) => _$DiameterBeanFromJson(json);
}

@freezed
class HeightBean with _$HeightBean {
  const factory HeightBean({
    @JsonKey(name: 'meters') num? meters,
    @JsonKey(name: 'feet') num? feet,
  }) = _HeightBean;

  factory HeightBean.fromJson(Map<String, Object?> json) => _$HeightBeanFromJson(json);
}

@freezed
class ThrustBean with _$ThrustBean {
  const factory ThrustBean({
    @JsonKey(name: 'kN') num? kN,
    @JsonKey(name: 'lbf') num? lbf,
  }) = _ThrustBean;

  factory ThrustBean.fromJson(Map<String, Object?> json) => _$ThrustBeanFromJson(json);
}

@freezed
class First_stageBean with _$First_stageBean {
  const factory First_stageBean({
    @JsonKey(name: 'thrust_sea_level') Thrust_sea_levelBean? thrustSeaLevel,
    @JsonKey(name: 'thrust_vacuum') Thrust_vacuumBean? thrustVacuum,
    @JsonKey(name: 'reusable') bool? reusable,
    @JsonKey(name: 'engines') num? engines,
    @JsonKey(name: 'fuel_amount_tons') num? fuelAmountTons,
    @JsonKey(name: 'burn_time_sec') num? burnTimeSec,
  }) = _First_stageBean;

  factory First_stageBean.fromJson(Map<String, Object?> json) => _$First_stageBeanFromJson(json);
}

@freezed
class MassBean with _$MassBean {
  const factory MassBean({
    @JsonKey(name: 'kg') num? kg,
    @JsonKey(name: 'lb') num? lb,
  }) = _MassBean;

  factory MassBean.fromJson(Map<String, Object?> json) => _$MassBeanFromJson(json);
}


