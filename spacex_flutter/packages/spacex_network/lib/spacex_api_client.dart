import 'spacex_service.dart';

abstract class IRemoteService {
  Future<Map<String, dynamic>> fetchCompanyInfo();
  Future<List<dynamic>> fetchLaunches();
  Future<List<dynamic>> fetchRockets();
}

class SpaceXRemoteService implements IRemoteService {
  final IApiClient _apiClient;

  SpaceXRemoteService(this._apiClient);

  @override
  Future<Map<String, dynamic>> fetchCompanyInfo() async {
    return await _apiClient.get('/company');
  }

  @override
  Future<List<dynamic>> fetchLaunches() async {
    return await _apiClient.get('/launches');
  }

  @override
  Future<List<dynamic>> fetchRockets() async {
    return await _apiClient.get('/rockets');
  }
}

