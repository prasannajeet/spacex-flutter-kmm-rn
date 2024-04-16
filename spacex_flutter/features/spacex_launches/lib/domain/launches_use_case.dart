
import 'package:spacex_launches/data/spacex_launches.dart';
import 'package:spacex_network/abstract_use_case.dart';
import 'package:spacex_network/spacex_api_client.dart';

class GetSpaceXLaunchesUseCase extends IUseCase<List<SpacexLaunches>> {
  GetSpaceXLaunchesUseCase(super.remoteService);

  @override
  Future<List<SpacexLaunches>> call() async {
    final response = await remoteService.fetchLaunches();
    return response.map((e) => SpacexLaunches.fromJson(e)).toList();
  }
}
