import 'package:flutter/material.dart';

IconData weatherCodeToIcon(int weatherCode) {
  if (weatherCode <= 1) return Icons.sunny;
  if (weatherCode <= 3) return Icons.cloud;
  if (weatherCode <= 69) return Icons.water_drop;
  if (weatherCode <= 79) return Icons.snowing;
  return Icons.question_mark;
}
