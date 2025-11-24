import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice/providers/provider.dart';
class WeatherUi extends ConsumerStatefulWidget {
  const WeatherUi({super.key});

  @override
  ConsumerState<WeatherUi> createState() => _WeatherUiState();
}

class _WeatherUiState extends ConsumerState<WeatherUi> {
  @override
  Widget build(BuildContext context) {
    final weatherWatch  = ref.watch(weatherStateNotifierProvider);
    var weatherRead  = ref.read(weatherStateNotifierProvider.notifier);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/weather-svg.svg', height: 250),
              Text("Windy", style: TextStyle(fontSize: 40)),
              Text(weatherWatch.degree.toString(), style: TextStyle(fontSize: 40)),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              FilledButton(onPressed: () {
                weatherRead.fetchWeather();
              }, child: Text("check weather")),
            ],
          ),
        ],
      ),
    );
  }
}

