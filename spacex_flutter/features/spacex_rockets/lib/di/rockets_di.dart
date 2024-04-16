import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:spacex_network/spacex_api_di.dart';
import '../data/spacex_rockets.dart';
import '../domain/get_rockets_usecase.dart';
part 'rockets_di.g.dart';

@riverpod
GetSpaceXRocketsUseCase spacexRocketsUseCase(SpacexRocketsUseCaseRef ref) {
  return GetSpaceXRocketsUseCase(ref.watch(spaceXApiClientProvider));
}

final spacexRocketsStateProvider = StateNotifierProvider<SpaceXRocketsNotifier, AsyncValue<List<SpaceXRockets>>>((ref) {
  final useCase = ref.read(spacexRocketsUseCaseProvider);
  return SpaceXRocketsNotifier(useCase);
});

class SpaceXRocketsNotifier extends StateNotifier<AsyncValue<List<SpaceXRockets>>> {
  final GetSpaceXRocketsUseCase _getSpaceXRocketsUseCase;

  SpaceXRocketsNotifier(this._getSpaceXRocketsUseCase) : super(const AsyncLoading()) {
    fetchRockets();
  }

  Future<void> fetchRockets() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _getSpaceXRocketsUseCase());
  }
}
