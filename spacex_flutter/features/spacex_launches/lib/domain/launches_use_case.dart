
import 'package:spacex_launches/data/spacex_launches.dart';
import 'package:spacex_network/spacex_api_client.dart';

class SpaceXLaunchesUseCase {
  final SpaceXApiClient _apiClient;

  SpaceXLaunchesUseCase(this._apiClient);

  Future<List<SpacexLaunches>> call() async {
    final response = await _apiClient.fetchLaunches();
    return response.map((e) => SpacexLaunches.fromJson(e)).toList();
  }
}