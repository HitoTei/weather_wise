// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherHash() => r'd19a32bfc78011b7bb4dd74e34d672bb25ee3622';

/// See also [weather].
@ProviderFor(weather)
final weatherProvider = AutoDisposeFutureProvider<String>.internal(
  weather,
  name: r'weatherProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$weatherHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeatherRef = AutoDisposeFutureProviderRef<String>;
String _$currentTimeHash() => r'b1b8bb48047629a597228bb123ca7c5fea4d08f9';

/// See also [currentTime].
@ProviderFor(currentTime)
final currentTimeProvider = AutoDisposeProvider<String>.internal(
  currentTime,
  name: r'currentTimeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$currentTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentTimeRef = AutoDisposeProviderRef<String>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
