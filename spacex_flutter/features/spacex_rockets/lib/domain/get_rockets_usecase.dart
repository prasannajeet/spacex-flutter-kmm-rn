import 'package:spacex_network/abstract_use_case.dart';
import 'package:spacex_rockets/data/spacex_rockets.dart';

class GetSpaceXRocketsUseCase extends IUseCase<List<SpaceXRockets>> {
  GetSpaceXRocketsUseCase(super.remoteService);
  @override
  Future<List<SpaceXRockets>> call() async {
    final response = await remoteService.fetchRockets();
    return response.map((e) => SpaceXRockets.fromJson(e)).toList();
  }
}
