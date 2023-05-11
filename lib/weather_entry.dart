import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_entry.freezed.dart';
part 'weather_entry.g.dart';

@freezed
class WeatherEntry with _$WeatherEntry{
  const factory WeatherEntry({
    required final String time,
    @JsonKey(name: 'temperature_2m')
    required final double temperature,
    required final int weatherCode,
  }) = _WeatherEntry;

  factory WeatherEntry.fromJson(Map<String, dynamic> json) =>
      _$WeatherEntryFromJson(json);
}