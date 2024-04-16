import 'spacex_service.dart';

abstract class IRemoteService {
  final IApiClient apiClient;
  IRemoteService(this.apiClient);
  Future<Map<String, dynamic>> fetchCompanyInfo();
  Future<List<dynamic>> fetchLaunches();
  Future<List<dynamic>> fetchRockets();
}

class SpaceXRemoteService extends IRemoteService {
  SpaceXRemoteService(super.apiClient);

  @override
  Future<Map<String, dynamic>> fetchCompanyInfo() async {
    return await apiClient.get('/company');
  }

  @override
  Future<List<dynamic>> fetchLaunches() async {
    return await apiClient.get('/launches');
  }

  @override
  Future<List<dynamic>> fetchRockets() async {
    return await apiClient.get('/rockets');
  }
}

