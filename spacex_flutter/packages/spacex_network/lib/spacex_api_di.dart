// Provider for Dio instance
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'spacex_api_client.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(); // Configure Dio instance here if needed
});

// Provider for SpaceXApiClient
final spaceXApiClientProvider = Provider<SpaceXApiClient>((ref) {
  return SpaceXApiClient(ref.watch(dioProvider));
});