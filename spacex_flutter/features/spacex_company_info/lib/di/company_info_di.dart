import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_company_info/data/spacex_company_info.dart';
import 'package:spacex_network/spacex_api_di.dart';
import '../domain/company_info_usecase.dart';

final companyInfoUseCaseProvider = Provider<GetCompanyInfoUseCase>((ref) {
  final remoteService = ref.read(remoteServiceProvider);
  return GetCompanyInfoUseCase(remoteService);
});

final companyInfoStateProvider = StateNotifierProvider<CompanyInfoNotifier, AsyncValue<SpacexCompanyInfo>>((ref) {
  final useCase = ref.read(companyInfoUseCaseProvider);
  return CompanyInfoNotifier(useCase);
});

class CompanyInfoNotifier extends StateNotifier<AsyncValue<SpacexCompanyInfo>> {
  final GetCompanyInfoUseCase _getCompanyInfoUseCase;

  CompanyInfoNotifier(this._getCompanyInfoUseCase) : super(const AsyncValue.loading()) {
    fetchCompanyInfo();
  }

  Future<void> fetchCompanyInfo() async {
    try {
      final info = await _getCompanyInfoUseCase();
      state = AsyncValue.data(info);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}