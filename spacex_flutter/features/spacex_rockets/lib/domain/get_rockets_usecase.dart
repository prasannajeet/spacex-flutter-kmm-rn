import 'package:spacex_network/spacex_api_client.dart';
import 'package:spacex_rockets/data/spacex_rockets.dart';

class GetSpaceXRocketsUseCase {

  final SpaceXApiClient _apiClient;

  GetSpaceXRocketsUseCase(this._apiClient);

  Future<List<SpaceXRockets>> call() async {
    final response = await _apiClient.fetchRockets();
    return response.map((e) => SpaceXRockets.fromJson(e)).toList();
  }
}
