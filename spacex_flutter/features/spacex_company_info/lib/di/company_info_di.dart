import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_company_info/data/spacex_company_info.dart';
import 'package:spacex_network/spacex_api_di.dart';
import '../domain/company_info_usecase.dart';

final companyInfoUseCaseProvider = Provider<CompanyInfoUseCase>((ref) {
  return CompanyInfoUseCase(ref.watch(spaceXApiClientProvider));
});

final companyInfoProvider = StateNotifierProvider<CompanyInfoNotifier, AsyncValue<SpacexCompanyInfo>>((ref) {
  final useCase = ref.read(companyInfoUseCaseProvider);
  return CompanyInfoNotifier(useCase);
});

class CompanyInfoNotifier extends StateNotifier<AsyncValue<SpacexCompanyInfo>> {
  final CompanyInfoUseCase _useCase;

  CompanyInfoNotifier(this._useCase) : super(const AsyncValue.loading()) {
    fetchCompanyInfo();
  }

  Future<void> fetchCompanyInfo() async {
    try {
      final info = await _useCase();
      state = AsyncValue.data(info);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}