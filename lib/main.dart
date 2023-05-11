import 'dart:convert';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:weather_wise/weather_code.dart';
import 'package:weather_wise/weather_entry.dart';

part 'main.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProviderScope(child: _MyApp()),
    );
  }
}

final url = Uri.parse(
    'https://api.open-meteo.com/v1/forecast?latitude=36.20&longitude=140.10&hourly=temperature_2m,weathercode&past_days=7');

@riverpod
Future<List<WeatherEntry>> weatherEntries(WeatherEntriesRef ref) async {
  final response = await http.get(url);
  final json = jsonDecode(response.body);
  final hourly = json['hourly'] as Map<String, dynamic>;
  final times = hourly['time'] as List<dynamic>;
  final temperatures = hourly['temperature_2m'] as List<dynamic>;
  final weatherCodes = hourly['weathercode'] as List<dynamic>;
  final entries = <WeatherEntry>[];
  for (var i = 0; i < times.length; i++) {
    entries.add(WeatherEntry(
      time: times[i] as String,
      temperature: temperatures[i] as double,
      weatherCode: weatherCodes[i] as int,
    ));
  }
  return entries;
}

@riverpod
String currentTime(CurrentTimeRef ref) {
  return DateTime.now().toString();
}

class _MyApp extends ConsumerWidget {
  void refresh(WidgetRef ref) {
    ref.invalidate(weatherEntriesProvider);
    ref.invalidate(currentTimeProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Wise'),
        actions: [
          IconButton(
            onPressed: () => refresh(ref),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CurrentTimeWidget(),
          Flexible(child: WeatherTimeLineWidget()),
        ],
      ),
    );
  }
}

class CurrentTimeWidget extends ConsumerWidget {
  const CurrentTimeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTime = ref.watch(currentTimeProvider);
    return Text(
      currentTime,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class WeatherTimeLineWidget extends ConsumerWidget {
  const WeatherTimeLineWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final aspectRatio = size.width / size.height;
    final weatherEntries = ref.watch(weatherEntriesProvider);
    return weatherEntries.when(
      data: (data) {
        return (aspectRatio > 16 / 9)
            ? Row(
                children: [
                  Expanded(child: WeatherEntriesListWidget(data)),
                  Expanded(child: WeatherChartWidget(data)),
                ],
              )
            : Column(
                children: [
                  Expanded(child: WeatherEntriesListWidget(data)),
                  Expanded(child: WeatherChartWidget(data)),
                ],
              );
      },
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}

class WeatherEntriesListWidget extends StatelessWidget {
  const WeatherEntriesListWidget(this._weatherEntries, {super.key});

  final List<WeatherEntry> _weatherEntries;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _weatherEntries.length,
      itemBuilder: (context, index) {
        final entry = _weatherEntries[index];
        return ListTile(
          title: Text(entry.time),
          subtitle: Text('${entry.temperature}°C'),
          leading: Icon(weatherCodeToIcon(entry.weatherCode)),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

class WeatherChartWidget extends StatelessWidget {
  const WeatherChartWidget(this._weatherEntries, {super.key});

  final List<WeatherEntry> _weatherEntries;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: _weatherEntries
                  .map((entry) => FlSpot(
                        _weatherEntries.indexOf(entry).toDouble(),
                        entry.temperature,
                      ))
                  .toList(),
            ),
          ],
          titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (fl, meta) {
                    final index = fl.toInt();
                    final entry = _weatherEntries[index];
                    if (index % 50 == 0) {
                      return Text(entry.time.substring(5,10));
                    } else {
                      return const SizedBox();
                    }
                  }),
            ),
          )),
    );
  }
}
