// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherEntriesHash() => r'56d1f9ccedff9cf1420621b6b9cac9c9925070e3';

/// See also [weatherEntries].
@ProviderFor(weatherEntries)
final weatherEntriesProvider =
    AutoDisposeFutureProvider<List<WeatherEntry>>.internal(
  weatherEntries,
  name: r'weatherEntriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherEntriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WeatherEntriesRef = AutoDisposeFutureProviderRef<List<WeatherEntry>>;
String _$currentTimeHash() => r'c13bb665c45ad3637f16db2441bb7d38167ca2b1';

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
