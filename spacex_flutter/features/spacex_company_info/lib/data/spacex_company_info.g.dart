// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacex_company_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpacexCompanyInfoImpl _$$SpacexCompanyInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$SpacexCompanyInfoImpl(
      headquarters: json['headquarters'] == null
          ? null
          : Headquarters.fromJson(json['headquarters'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      name: json['name'] as String?,
      founder: json['founder'] as String?,
      founded: json['founded'] as int?,
      employees: json['employees'] as int?,
      vehicles: json['vehicles'] as int?,
      launchSites: json['launchSites'] as int?,
      testSites: json['testSites'] as int?,
      ceo: json['ceo'] as String?,
      cto: json['cto'] as String?,
      coo: json['coo'] as String?,
      ctoPropulsion: json['ctoPropulsion'] as String?,
      valuation: json['valuation'] as int?,
      summary: json['summary'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$SpacexCompanyInfoImplToJson(
        _$SpacexCompanyInfoImpl instance) =>
    <String, dynamic>{
      'headquarters': instance.headquarters,
      'links': instance.links,
      'name': instance.name,
      'founder': instance.founder,
      'founded': instance.founded,
      'employees': instance.employees,
      'vehicles': instance.vehicles,
      'launchSites': instance.launchSites,
      'testSites': instance.testSites,
      'ceo': instance.ceo,
      'cto': instance.cto,
      'coo': instance.coo,
      'ctoPropulsion': instance.ctoPropulsion,
      'valuation': instance.valuation,
      'summary': instance.summary,
      'id': instance.id,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      website: json['website'] as String?,
      flickr: json['flickr'] as String?,
      twitter: json['twitter'] as String?,
      elonTwitter: json['elonTwitter'] as String?,
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'website': instance.website,
      'flickr': instance.flickr,
      'twitter': instance.twitter,
      'elonTwitter': instance.elonTwitter,
    };

_$HeadquartersImpl _$$HeadquartersImplFromJson(Map<String, dynamic> json) =>
    _$HeadquartersImpl(
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$HeadquartersImplToJson(_$HeadquartersImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
    };
