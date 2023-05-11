// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherEntry _$$_WeatherEntryFromJson(Map<String, dynamic> json) =>
    _$_WeatherEntry(
      time: json['time'] as String,
      temperature: (json['temperature_2m'] as num).toDouble(),
      weatherCode: json['weatherCode'] as int,
    );

Map<String, dynamic> _$$_WeatherEntryToJson(_$_WeatherEntry instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature,
      'weatherCode': instance.weatherCode,
    };
