import 'package:spacex_company_info/data/spacex_company_info.dart';
import 'package:spacex_network/abstract_use_case.dart';


class GetCompanyInfoUseCase extends IUseCase<SpacexCompanyInfo> {
  GetCompanyInfoUseCase(super.remoteService);

  @override
  Future<SpacexCompanyInfo> call() async {
    final response = await remoteService.fetchCompanyInfo();
    return SpacexCompanyInfo.fromJson(response);
  }
}
