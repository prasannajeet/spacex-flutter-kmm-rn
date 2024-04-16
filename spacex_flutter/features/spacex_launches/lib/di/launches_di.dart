import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spacex_launches/domain/launches_use_case.dart';
import 'package:spacex_network/spacex_api_di.dart';
import '../data/spacex_launches.dart';
part 'launches_di.g.dart';

@riverpod
SpaceXLaunchesUseCase spacexLaunchesUseCase(SpacexLaunchesUseCaseRef ref) {
  return SpaceXLaunchesUseCase(ref.watch(spaceXApiClientProvider));
}

final spacexLaunchesProvider = StateNotifierProvider<SpaceXLaunchesNotifier, AsyncValue<List<SpacexLaunches>>>((ref) {
  final useCase = ref.read(spacexLaunchesUseCaseProvider);
  return SpaceXLaunchesNotifier(useCase);
});

class SpaceXLaunchesNotifier extends StateNotifier<AsyncValue<List<SpacexLaunches>>> {
  final SpaceXLaunchesUseCase _useCase;

  SpaceXLaunchesNotifier(this._useCase) : super(const AsyncLoading()) {
    fetchLaunches();
  }

  Future<void> fetchLaunches() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _useCase());
  }
}