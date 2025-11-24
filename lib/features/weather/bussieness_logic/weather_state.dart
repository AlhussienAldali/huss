import 'package:equatable/equatable.dart';

class WeatherState extends Equatable {
  final int degree;

  factory WeatherState.initial() => const WeatherState(degree: 0);

  const WeatherState({required this.degree});

  WeatherState copyWith({final int? degree}) => WeatherState(degree: degree??0);

  @override
  List<Object?> get props => [degree];
}
