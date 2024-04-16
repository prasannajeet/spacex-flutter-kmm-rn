import 'package:dio/dio.dart';

abstract class IApiClient {
  Future<void> initialize(SpaceXNetworkServiceConfig config);
  Future<T> get<T>(String path, {Map<String, dynamic>? queryParameters});
  Future<T> post<T>(String path, {Map<String, dynamic>? queryParameters, dynamic body});
  Future<T> put<T>(String path, {Map<String, dynamic>? queryParameters, dynamic body});
}

class SpaceXApiClient implements IApiClient {
  final Dio _dio;

  SpaceXApiClient(this._dio);

  @override
  Future<void> initialize(SpaceXNetworkServiceConfig config) async {
    _dio.options.baseUrl = config.baseUrl;
    _dio.interceptors.clear();
    config.interceptors.forEach((interceptor) {
      switch (interceptor) {
        case RemoteServiceInterceptor.request:
          _dio.interceptors.add(InterceptorsWrapper(
              onRequest: (options, handler) {
                print('Request: ${options.uri}');
                return handler.next(options);
              }
          ));
          break;
        case RemoteServiceInterceptor.response:
          _dio.interceptors.add(InterceptorsWrapper(
              onResponse: (response, handler) {
                print('Response: ${response.statusCode}');
                return handler.next(response);
              }
          ));
          break;
        case RemoteServiceInterceptor.error:
          _dio.interceptors.add(InterceptorsWrapper(
              onError: (error, handler) {
                print('Error: ${error.message}');
                return handler.next(error);
              }
          ));
          break;
      }
    });
  }

  @override
  Future<T> get<T>(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      var response = await _dio.get(path, queryParameters: queryParameters);
      if(response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T> post<T>(String path, {Map<String, dynamic>? queryParameters, dynamic body}) async {
    try {
      var response = await _dio.post(path, queryParameters: queryParameters, data: body);
      if(response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<T> put<T>(String path, {Map<String, dynamic>? queryParameters, dynamic body}) async {
    try {
      var response = await _dio.put(path, queryParameters: queryParameters, data: body);
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

class SpaceXNetworkServiceConfig {
  final String baseUrl;
  final List<RemoteServiceInterceptor> interceptors;
  SpaceXNetworkServiceConfig({this.baseUrl = 'https://api.spacexdata.com/v4', this.interceptors =  const [RemoteServiceInterceptor.error, RemoteServiceInterceptor.response, RemoteServiceInterceptor.request]});
}

enum RemoteServiceInterceptor {
  request,
  response,
  error
}