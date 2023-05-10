import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

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
    'https://api.open-meteo.com/v1/forecast?latitude=36.20&longitude=140.10&hourly=temperature_2m');

@riverpod
Future<String> weather(WeatherRef ref) async {
  final response = await http.get(url);
  return response.body;
}

@riverpod
String currentTime(CurrentTimeRef ref) {
  return DateTime.now().toString();
}

class _MyApp extends ConsumerWidget {
  void refresh(WidgetRef ref) {
    ref.invalidate(weatherProvider);
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
          WeatherWidget(),
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

class WeatherWidget extends ConsumerWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherProvider);
    return weather.when(
      data: (data) => Text(data),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
