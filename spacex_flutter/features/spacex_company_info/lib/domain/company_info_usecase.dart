
import 'package:spacex_company_info/data/spacex_company_info.dart';
import 'package:spacex_network/spacex_api_client.dart';


class GetCompanyInfoUseCase {
  final SpaceXApiClient _apiClient;

  GetCompanyInfoUseCase(this._apiClient);

  Future<SpacexCompanyInfo> call() async {
    final response = await _apiClient.fetchCompanyInfo();
    return SpacexCompanyInfo.fromJson(response);
  }
}
