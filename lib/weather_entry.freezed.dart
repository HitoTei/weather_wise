// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherEntry _$WeatherEntryFromJson(Map<String, dynamic> json) {
  return _WeatherEntry.fromJson(json);
}

/// @nodoc
mixin _$WeatherEntry {
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  double get temperature => throw _privateConstructorUsedError;
  int get weatherCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherEntryCopyWith<WeatherEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEntryCopyWith<$Res> {
  factory $WeatherEntryCopyWith(
          WeatherEntry value, $Res Function(WeatherEntry) then) =
      _$WeatherEntryCopyWithImpl<$Res, WeatherEntry>;
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m') double temperature,
      int weatherCode});
}

/// @nodoc
class _$WeatherEntryCopyWithImpl<$Res, $Val extends WeatherEntry>
    implements $WeatherEntryCopyWith<$Res> {
  _$WeatherEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? weatherCode = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherEntryCopyWith<$Res>
    implements $WeatherEntryCopyWith<$Res> {
  factory _$$_WeatherEntryCopyWith(
          _$_WeatherEntry value, $Res Function(_$_WeatherEntry) then) =
      __$$_WeatherEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temperature_2m') double temperature,
      int weatherCode});
}

/// @nodoc
class __$$_WeatherEntryCopyWithImpl<$Res>
    extends _$WeatherEntryCopyWithImpl<$Res, _$_WeatherEntry>
    implements _$$_WeatherEntryCopyWith<$Res> {
  __$$_WeatherEntryCopyWithImpl(
      _$_WeatherEntry _value, $Res Function(_$_WeatherEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? weatherCode = null,
  }) {
    return _then(_$_WeatherEntry(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherEntry implements _WeatherEntry {
  const _$_WeatherEntry(
      {required this.time,
      @JsonKey(name: 'temperature_2m') required this.temperature,
      required this.weatherCode});

  factory _$_WeatherEntry.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherEntryFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'temperature_2m')
  final double temperature;
  @override
  final int weatherCode;

  @override
  String toString() {
    return 'WeatherEntry(time: $time, temperature: $temperature, weatherCode: $weatherCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherEntry &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature, weatherCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherEntryCopyWith<_$_WeatherEntry> get copyWith =>
      __$$_WeatherEntryCopyWithImpl<_$_WeatherEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherEntryToJson(
      this,
    );
  }
}

abstract class _WeatherEntry implements WeatherEntry {
  const factory _WeatherEntry(
      {required final String time,
      @JsonKey(name: 'temperature_2m') required final double temperature,
      required final int weatherCode}) = _$_WeatherEntry;

  factory _WeatherEntry.fromJson(Map<String, dynamic> json) =
      _$_WeatherEntry.fromJson;

  @override
  String get time;
  @override
  @JsonKey(name: 'temperature_2m')
  double get temperature;
  @override
  int get weatherCode;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherEntryCopyWith<_$_WeatherEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
