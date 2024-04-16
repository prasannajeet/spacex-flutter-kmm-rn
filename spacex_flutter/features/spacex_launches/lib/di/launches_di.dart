import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_launches/domain/launches_use_case.dart';
import 'package:spacex_network/spacex_api_di.dart';
import '../data/spacex_launches.dart';

final spacexLaunchesUseCaseProvider = Provider<GetSpaceXLaunchesUseCase>((ref) {
  final remoteService = ref.read(remoteServiceProvider);
  return GetSpaceXLaunchesUseCase(remoteService);
});

final spacexLaunchesStateProvider = StateNotifierProvider<SpaceXLaunchesNotifier, AsyncValue<List<SpacexLaunches>>>((ref) {
  final useCase = ref.read(spacexLaunchesUseCaseProvider);
  return SpaceXLaunchesNotifier(useCase);
});

class SpaceXLaunchesNotifier extends StateNotifier<AsyncValue<List<SpacexLaunches>>> {
  final GetSpaceXLaunchesUseCase _getSpaceXLaunchesUseCase;

  SpaceXLaunchesNotifier(this._getSpaceXLaunchesUseCase) : super(const AsyncLoading()) {
    fetchLaunches();
  }

  Future<void> fetchLaunches() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _getSpaceXLaunchesUseCase());
  }
}