// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacex_rockets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThrustVacuumBean _$ThrustVacuumBeanFromJson(Map<String, dynamic> json) =>
    ThrustVacuumBean(
      kN: json['kN'] as int?,
      lbf: json['lbf'] as int?,
    );

Map<String, dynamic> _$ThrustVacuumBeanToJson(ThrustVacuumBean instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

ThrustSeaLevelBean _$ThrustSeaLevelBeanFromJson(Map<String, dynamic> json) =>
    ThrustSeaLevelBean(
      kN: json['kN'] as int?,
      lbf: json['lbf'] as int?,
    );

Map<String, dynamic> _$ThrustSeaLevelBeanToJson(ThrustSeaLevelBean instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

DiameterBean _$DiameterBeanFromJson(Map<String, dynamic> json) => DiameterBean(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DiameterBeanToJson(DiameterBean instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

HeightBean _$HeightBeanFromJson(Map<String, dynamic> json) => HeightBean(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HeightBeanToJson(HeightBean instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

ThrustBean _$ThrustBeanFromJson(Map<String, dynamic> json) => ThrustBean(
      kN: json['kN'] as int?,
      lbf: json['lbf'] as int?,
    );

Map<String, dynamic> _$ThrustBeanToJson(ThrustBean instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

FirstStageBean _$FirstStageBeanFromJson(Map<String, dynamic> json) =>
    FirstStageBean(
      thrustSeaLevel: json['thrust_sea_level'] == null
          ? null
          : ThrustSeaLevelBean.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : ThrustVacuumBean.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: json['engines'] as int?,
      fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burnTimeSec: json['burn_time_sec'] as int?,
    );

Map<String, dynamic> _$FirstStageBeanToJson(FirstStageBean instance) =>
    <String, dynamic>{
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };

MassBean _$MassBeanFromJson(Map<String, dynamic> json) => MassBean(
      kg: json['kg'] as int?,
      lb: json['lb'] as int?,
    );

Map<String, dynamic> _$MassBeanToJson(MassBean instance) => <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };

_$Spacex_rocketsImpl _$$Spacex_rocketsImplFromJson(Map<String, dynamic> json) =>
    _$Spacex_rocketsImpl(
      height: json['height'] == null
          ? null
          : HeightBean.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : DiameterBean.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: json['mass'] == null
          ? null
          : MassBean.fromJson(json['mass'] as Map<String, dynamic>),
      firstStage: json['first_stage'] == null
          ? null
          : FirstStageBean.fromJson(
              json['first_stage'] as Map<String, dynamic>),
      secondStage: json['second_stage'] == null
          ? null
          : SecondStageBean.fromJson(
              json['second_stage'] as Map<String, dynamic>),
      engines: json['engines'] == null
          ? null
          : EnginesBean.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs: json['landing_legs'] == null
          ? null
          : LandingLegsBean.fromJson(
              json['landing_legs'] as Map<String, dynamic>),
      payloadWeights: (json['payload_weights'] as List<dynamic>?)
          ?.map((e) => PayloadWeightsBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickrImages: (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      stages: json['stages'] as int?,
      boosters: json['boosters'] as int?,
      costPerLaunch: json['cost_per_launch'] as int?,
      successRatePct: json['success_rate_pct'] as int?,
      firstFlight: json['first_flight'] as String?,
      country: json['country'] as String?,
      company: json['company'] as String?,
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$Spacex_rocketsImplToJson(
        _$Spacex_rocketsImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'first_stage': instance.firstStage,
      'second_stage': instance.secondStage,
      'engines': instance.engines,
      'landing_legs': instance.landingLegs,
      'payload_weights': instance.payloadWeights,
      'flickr_images': instance.flickrImages,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'cost_per_launch': instance.costPerLaunch,
      'success_rate_pct': instance.successRatePct,
      'first_flight': instance.firstFlight,
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };

_$PayloadWeightsBeanImpl _$$PayloadWeightsBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$PayloadWeightsBeanImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      kg: json['kg'] as int?,
      lb: json['lb'] as int?,
    );

Map<String, dynamic> _$$PayloadWeightsBeanImplToJson(
        _$PayloadWeightsBeanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };

_$LandingLegsBeanImpl _$$LandingLegsBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$LandingLegsBeanImpl(
      number: json['number'] as int?,
    );

Map<String, dynamic> _$$LandingLegsBeanImplToJson(
        _$LandingLegsBeanImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
    };

_$EnginesBeanImpl _$$EnginesBeanImplFromJson(Map<String, dynamic> json) =>
    _$EnginesBeanImpl(
      isp: json['isp'] == null
          ? null
          : IspBean.fromJson(json['isp'] as Map<String, dynamic>),
      thrustSeaLevel: json['thrust_sea_level'] == null
          ? null
          : ThrustSeaLevelBean.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : ThrustVacuumBean.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      number: json['number'] as int?,
      type: json['type'] as String?,
      version: json['version'] as String?,
      layout: json['layout'] as String?,
      engineLossMax: json['engine_loss_max'] as int?,
      propellant1: json['propellant_1'] as String?,
      propellant2: json['propellant_2'] as String?,
      thrustToWeight: json['thrust_to_weight'] as int?,
    );

Map<String, dynamic> _$$EnginesBeanImplToJson(_$EnginesBeanImpl instance) =>
    <String, dynamic>{
      'isp': instance.isp,
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
      'number': instance.number,
      'type': instance.type,
      'version': instance.version,
      'layout': instance.layout,
      'engine_loss_max': instance.engineLossMax,
      'propellant_1': instance.propellant1,
      'propellant_2': instance.propellant2,
      'thrust_to_weight': instance.thrustToWeight,
    };

_$ThrustVacuumBeanImpl _$$ThrustVacuumBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$ThrustVacuumBeanImpl(
      kN: json['kN'] as int?,
      lbf: json['lbf'] as int?,
    );

Map<String, dynamic> _$$ThrustVacuumBeanImplToJson(
        _$ThrustVacuumBeanImpl instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

_$ThrustSeaLevelBeanImpl _$$ThrustSeaLevelBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$ThrustSeaLevelBeanImpl(
      kN: json['kN'] as int?,
      lbf: json['lbf'] as int?,
    );

Map<String, dynamic> _$$ThrustSeaLevelBeanImplToJson(
        _$ThrustSeaLevelBeanImpl instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

_$IspBeanImpl _$$IspBeanImplFromJson(Map<String, dynamic> json) =>
    _$IspBeanImpl(
      seaLevel: json['sea_level'] as int?,
      vacuum: json['vacuum'] as int?,
    );

Map<String, dynamic> _$$IspBeanImplToJson(_$IspBeanImpl instance) =>
    <String, dynamic>{
      'sea_level': instance.seaLevel,
      'vacuum': instance.vacuum,
    };

_$SecondStageBeanImpl _$$SecondStageBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondStageBeanImpl(
      thrust: json['thrust'] == null
          ? null
          : ThrustBean.fromJson(json['thrust'] as Map<String, dynamic>),
      payloads: json['payloads'] == null
          ? null
          : PayloadsBean.fromJson(json['payloads'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: json['engines'] as int?,
      fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burnTimeSec: json['burn_time_sec'] as int?,
    );

Map<String, dynamic> _$$SecondStageBeanImplToJson(
        _$SecondStageBeanImpl instance) =>
    <String, dynamic>{
      'thrust': instance.thrust,
      'payloads': instance.payloads,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };

_$PayloadsBeanImpl _$$PayloadsBeanImplFromJson(Map<String, dynamic> json) =>
    _$PayloadsBeanImpl(
      compositeFairing: json['composite_fairing'] == null
          ? null
          : CompositeFairingBean.fromJson(
              json['composite_fairing'] as Map<String, dynamic>),
      option1: json['option_1'] as String?,
    );

Map<String, dynamic> _$$PayloadsBeanImplToJson(_$PayloadsBeanImpl instance) =>
    <String, dynamic>{
      'composite_fairing': instance.compositeFairing,
      'option_1': instance.option1,
    };

_$CompositeFairingBeanImpl _$$CompositeFairingBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$CompositeFairingBeanImpl(
      height: json['height'] == null
          ? null
          : HeightBean.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : DiameterBean.fromJson(json['diameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompositeFairingBeanImplToJson(
        _$CompositeFairingBeanImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
    };

_$DiameterBeanImpl _$$DiameterBeanImplFromJson(Map<String, dynamic> json) =>
    _$DiameterBeanImpl(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DiameterBeanImplToJson(_$DiameterBeanImpl instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

_$HeightBeanImpl _$$HeightBeanImplFromJson(Map<String, dynamic> json) =>
    _$HeightBeanImpl(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$HeightBeanImplToJson(_$HeightBeanImpl instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

_$ThrustBeanImpl _$$ThrustBeanImplFromJson(Map<String, dynamic> json) =>
    _$ThrustBeanImpl(
      kN: json['kN'] as int?,
      lbf: json['lbf'] as int?,
    );

Map<String, dynamic> _$$ThrustBeanImplToJson(_$ThrustBeanImpl instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

_$FirstStageBeanImpl _$$FirstStageBeanImplFromJson(Map<String, dynamic> json) =>
    _$FirstStageBeanImpl(
      thrustSeaLevel: json['thrust_sea_level'] == null
          ? null
          : ThrustSeaLevelBean.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : ThrustVacuumBean.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: json['engines'] as int?,
      fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burnTimeSec: json['burn_time_sec'] as int?,
    );

Map<String, dynamic> _$$FirstStageBeanImplToJson(
        _$FirstStageBeanImpl instance) =>
    <String, dynamic>{
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };

_$MassBeanImpl _$$MassBeanImplFromJson(Map<String, dynamic> json) =>
    _$MassBeanImpl(
      kg: json['kg'] as int?,
      lb: json['lb'] as int?,
    );

Map<String, dynamic> _$$MassBeanImplToJson(_$MassBeanImpl instance) =>
    <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };
