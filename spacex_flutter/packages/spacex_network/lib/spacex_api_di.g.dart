// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spacex_api_di.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'58eeefbd0832498ca2574c1fe69ed783c58d1d8f';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$spaceXApiClientHash() => r'eb76ddc3cd1f005089ed3587ccbc643a6c39da2b';

/// See also [spaceXApiClient].
@ProviderFor(spaceXApiClient)
final spaceXApiClientProvider = AutoDisposeProvider<SpaceXApiClient>.internal(
  spaceXApiClient,
  name: r'spaceXApiClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$spaceXApiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SpaceXApiClientRef = AutoDisposeProviderRef<SpaceXApiClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
