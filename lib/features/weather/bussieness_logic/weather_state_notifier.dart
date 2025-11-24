import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/features/weather/bussieness_logic/weather_state.dart';
import 'package:practice/services/weather_service/weather_service.dart';

class WeatherStateNotifier extends StateNotifier<WeatherState> {
  WeatherStateNotifier() : super(WeatherState.initial());


  void fetchWeather() {
    int newDegree = WeatherService().getTemp();
    state = state.copyWith(degree: newDegree);
  }
}
