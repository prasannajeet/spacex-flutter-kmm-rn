// Provider for Dio instance
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'spacex_api_client.dart';

part 'spacex_api_di.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio();
}

@riverpod
SpaceXApiClient spaceXApiClient(SpaceXApiClientRef ref) {
  return SpaceXApiClient(ref.watch(dioProvider));
}
