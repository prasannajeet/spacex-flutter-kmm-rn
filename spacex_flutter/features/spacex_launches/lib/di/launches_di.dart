import 'package:spacex_launches/domain/launches_use_case.dart';
import 'package:spacex_network/spacex_api_di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/spacex_launches.dart';

final spacexLaunchesUseCaseProvider = Provider<SpaceXLaunchesUseCase>((ref) {
  return SpaceXLaunchesUseCase(ref.watch(spaceXApiClientProvider));
});

final spacexLaunchesProvider = StateNotifierProvider<SpaceXLaunchesNotifier, AsyncValue<List<SpacexLaunches>>>((ref) {
  final useCase = ref.read(spacexLaunchesUseCaseProvider);
  return SpaceXLaunchesNotifier(useCase);
});

class SpaceXLaunchesNotifier extends StateNotifier<AsyncValue<List<SpacexLaunches>>> {
  final SpaceXLaunchesUseCase _useCase;

  SpaceXLaunchesNotifier(this._useCase) : super(const AsyncValue.loading()) {
    fetchLaunches();
  }

  Future<void> fetchLaunches() async {
    try {
      final launches = await _useCase();
      state = AsyncValue.data(launches);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}