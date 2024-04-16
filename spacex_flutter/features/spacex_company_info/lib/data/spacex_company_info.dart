import 'package:freezed_annotation/freezed_annotation.dart';

part 'spacex_company_info.freezed.dart';
part 'spacex_company_info.g.dart';

@freezed
class SpacexCompanyInfo with _$SpacexCompanyInfo {
  const factory SpacexCompanyInfo({
    Headquarters? headquarters,
    Links? links,
    String? name,
    String? founder,
    int? founded,
    int? employees,
    int? vehicles,
    int? launchSites,
    int? testSites,
    String? ceo,
    String? cto,
    String? coo,
    String? ctoPropulsion,
    int? valuation,
    String? summary,
    String? id,
  }) = _SpacexCompanyInfo;
  factory SpacexCompanyInfo.fromJson(Map<String, dynamic> json) =>
      _$SpacexCompanyInfoFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    String? website,
    String? flickr,
    String? twitter,
    String? elonTwitter,
  }) = _Links;
  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Headquarters with _$Headquarters {
  const factory Headquarters({
    String? address,
    String? city,
    String? state,
  }) = _Headquarters;

  factory Headquarters.fromJson(Map<String, dynamic> json) =>
      _$HeadquartersFromJson(json);
}
