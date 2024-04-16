// Provider for Dio instance
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'spacex_api_client.dart';
import 'spacex_service.dart';

final dioProvider = Provider<Dio>((ref) => Dio());
final networkConfigProvider = Provider<SpaceXNetworkServiceConfig>((ref) => SpaceXNetworkServiceConfig());
final spaceXApiClientProvider = Provider<IApiClient>((ref) => SpaceXApiClient(ref.watch(dioProvider)));
final remoteServiceProvider = Provider<IRemoteService>((ref) => SpaceXRemoteService(ref.watch(spaceXApiClientProvider)));

