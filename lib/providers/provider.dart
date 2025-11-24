import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/features/weather/bussieness_logic/weather_state.dart';
import 'package:practice/features/weather/bussieness_logic/weather_state_notifier.dart';

final  weatherStateNotifierProvider =
    StateNotifierProvider<WeatherStateNotifier, WeatherState>(
      (final ref) => WeatherStateNotifier(),
    );
