// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacex_rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Spacex_rocketImpl _$$Spacex_rocketImplFromJson(Map<String, dynamic> json) =>
    _$Spacex_rocketImpl(
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
          : First_stageBean.fromJson(
              json['first_stage'] as Map<String, dynamic>),
      secondStage: json['second_stage'] == null
          ? null
          : Second_stageBean.fromJson(
              json['second_stage'] as Map<String, dynamic>),
      engines: json['engines'] == null
          ? null
          : EnginesBean.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs: json['landing_legs'] == null
          ? null
          : Landing_legsBean.fromJson(
              json['landing_legs'] as Map<String, dynamic>),
      payloadWeights: (json['payload_weights'] as List<dynamic>?)
          ?.map((e) => Payload_weightsBean.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickrImages: (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      stages: json['stages'] as num?,
      boosters: json['boosters'] as num?,
      costPerLaunch: json['cost_per_launch'] as num?,
      successRatePct: json['success_rate_pct'] as num?,
      firstFlight: json['first_flight'] as String?,
      country: json['country'] as String?,
      company: json['company'] as String?,
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$Spacex_rocketImplToJson(_$Spacex_rocketImpl instance) =>
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

_$Payload_weightsBeanImpl _$$Payload_weightsBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$Payload_weightsBeanImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      kg: json['kg'] as num?,
      lb: json['lb'] as num?,
    );

Map<String, dynamic> _$$Payload_weightsBeanImplToJson(
        _$Payload_weightsBeanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };

_$Landing_legsBeanImpl _$$Landing_legsBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$Landing_legsBeanImpl(
      number: json['number'] as num?,
    );

Map<String, dynamic> _$$Landing_legsBeanImplToJson(
        _$Landing_legsBeanImpl instance) =>
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
          : Thrust_sea_levelBean.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : Thrust_vacuumBean.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      number: json['number'] as num?,
      type: json['type'] as String?,
      version: json['version'] as String?,
      layout: json['layout'] as String?,
      engineLossMax: json['engine_loss_max'] as num?,
      propellant1: json['propellant_1'] as String?,
      propellant2: json['propellant_2'] as String?,
      thrustToWeight: json['thrust_to_weight'] as num?,
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

_$Thrust_vacuumBeanImpl _$$Thrust_vacuumBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$Thrust_vacuumBeanImpl(
      kN: json['kN'] as num?,
      lbf: json['lbf'] as num?,
    );

Map<String, dynamic> _$$Thrust_vacuumBeanImplToJson(
        _$Thrust_vacuumBeanImpl instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

_$Thrust_sea_levelBeanImpl _$$Thrust_sea_levelBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$Thrust_sea_levelBeanImpl(
      kN: json['kN'] as num?,
      lbf: json['lbf'] as num?,
    );

Map<String, dynamic> _$$Thrust_sea_levelBeanImplToJson(
        _$Thrust_sea_levelBeanImpl instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

_$IspBeanImpl _$$IspBeanImplFromJson(Map<String, dynamic> json) =>
    _$IspBeanImpl(
      seaLevel: json['sea_level'] as num?,
      vacuum: json['vacuum'] as num?,
    );

Map<String, dynamic> _$$IspBeanImplToJson(_$IspBeanImpl instance) =>
    <String, dynamic>{
      'sea_level': instance.seaLevel,
      'vacuum': instance.vacuum,
    };

_$Second_stageBeanImpl _$$Second_stageBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$Second_stageBeanImpl(
      thrust: json['thrust'] == null
          ? null
          : ThrustBean.fromJson(json['thrust'] as Map<String, dynamic>),
      payloads: json['payloads'] == null
          ? null
          : PayloadsBean.fromJson(json['payloads'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: json['engines'] as num?,
      fuelAmountTons: json['fuel_amount_tons'] as num?,
      burnTimeSec: json['burn_time_sec'] as num?,
    );

Map<String, dynamic> _$$Second_stageBeanImplToJson(
        _$Second_stageBeanImpl instance) =>
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
          : Composite_fairingBean.fromJson(
              json['composite_fairing'] as Map<String, dynamic>),
      option1: json['option_1'] as String?,
    );

Map<String, dynamic> _$$PayloadsBeanImplToJson(_$PayloadsBeanImpl instance) =>
    <String, dynamic>{
      'composite_fairing': instance.compositeFairing,
      'option_1': instance.option1,
    };

_$Composite_fairingBeanImpl _$$Composite_fairingBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$Composite_fairingBeanImpl(
      height: json['height'] == null
          ? null
          : HeightBean.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : DiameterBean.fromJson(json['diameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Composite_fairingBeanImplToJson(
        _$Composite_fairingBeanImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
    };

_$DiameterBeanImpl _$$DiameterBeanImplFromJson(Map<String, dynamic> json) =>
    _$DiameterBeanImpl(
      meters: json['meters'] as num?,
      feet: json['feet'] as num?,
    );

Map<String, dynamic> _$$DiameterBeanImplToJson(_$DiameterBeanImpl instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

_$HeightBeanImpl _$$HeightBeanImplFromJson(Map<String, dynamic> json) =>
    _$HeightBeanImpl(
      meters: json['meters'] as num?,
      feet: json['feet'] as num?,
    );

Map<String, dynamic> _$$HeightBeanImplToJson(_$HeightBeanImpl instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

_$ThrustBeanImpl _$$ThrustBeanImplFromJson(Map<String, dynamic> json) =>
    _$ThrustBeanImpl(
      kN: json['kN'] as num?,
      lbf: json['lbf'] as num?,
    );

Map<String, dynamic> _$$ThrustBeanImplToJson(_$ThrustBeanImpl instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

_$First_stageBeanImpl _$$First_stageBeanImplFromJson(
        Map<String, dynamic> json) =>
    _$First_stageBeanImpl(
      thrustSeaLevel: json['thrust_sea_level'] == null
          ? null
          : Thrust_sea_levelBean.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : Thrust_vacuumBean.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: json['engines'] as num?,
      fuelAmountTons: json['fuel_amount_tons'] as num?,
      burnTimeSec: json['burn_time_sec'] as num?,
    );

Map<String, dynamic> _$$First_stageBeanImplToJson(
        _$First_stageBeanImpl instance) =>
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
      kg: json['kg'] as num?,
      lb: json['lb'] as num?,
    );

Map<String, dynamic> _$$MassBeanImplToJson(_$MassBeanImpl instance) =>
    <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };
