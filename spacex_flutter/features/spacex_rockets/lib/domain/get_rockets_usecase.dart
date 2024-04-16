import 'package:spacex_network/abstract_use_case.dart';
import 'package:spacex_rockets/data/spacex_rocket.dart';

class GetSpaceXRocketsUseCase extends IUseCase<List<Spacex_rocket>> {
  GetSpaceXRocketsUseCase(super.remoteService);
  @override
  Future<List<Spacex_rocket>> call() async {
    final response = await remoteService.fetchRockets();
    return response.map((e) => Spacex_rocket.fromJson(e)).toList();
  }
}
