import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spacex_network/spacex_api_di.dart';
import 'package:spacex_rockets/data/spacex_rocket.dart';
import '../domain/get_rockets_usecase.dart';

final spacexRocketsUseCaseProvider = Provider<GetSpaceXRocketsUseCase>((ref) {
  final remoteService = ref.read(remoteServiceProvider);
  return GetSpaceXRocketsUseCase(remoteService);
});

final spacexRocketsStateProvider = StateNotifierProvider<SpaceXRocketsNotifier, AsyncValue<List<Spacex_rocket>>>((ref) {
  final useCase = ref.read(spacexRocketsUseCaseProvider);
  return SpaceXRocketsNotifier(useCase);
});

class SpaceXRocketsNotifier extends StateNotifier<AsyncValue<List<Spacex_rocket>>> {
  final GetSpaceXRocketsUseCase _getSpaceXRocketsUseCase;

  SpaceXRocketsNotifier(this._getSpaceXRocketsUseCase) : super(const AsyncLoading()) {
    fetchRockets();
  }

  Future<void> fetchRockets() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _getSpaceXRocketsUseCase());
  }
}
