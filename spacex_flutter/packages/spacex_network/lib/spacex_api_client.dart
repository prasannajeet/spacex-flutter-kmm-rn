import 'package:dio/dio.dart';

class SpaceXApiClient {
  final Dio _dio;
  final baseUrl = 'https://api.spacexdata.com/v4';

  SpaceXApiClient(this._dio);

  Future<Map<String, dynamic>> fetchCompanyInfo() async {
    try {
      var response = await _dio.get('$baseUrl/company');
      if(response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<dynamic>> fetchLaunches() async {
    try {
      var response = await _dio.get('$baseUrl/launches');
      if(response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Map<String, dynamic>> fetchRockets() async {
    try {
      var response = await _dio.get('$baseUrl/rockets');
      if(response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
