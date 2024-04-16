
import 'package:spacex_launches/data/spacex_launches.dart';
import 'package:spacex_network/spacex_api_client.dart';

class GetSpaceXLaunchesUseCase {
  final SpaceXApiClient _apiClient;

  GetSpaceXLaunchesUseCase(this._apiClient);

  Future<List<SpacexLaunches>> call() async {
    final response = await _apiClient.fetchLaunches();
    return response.map((e) => SpacexLaunches.fromJson(e)).toList();
  }
}