part of 'counter_bloc.dart';

class CounterState {
  final int count;
  final String name;
  final double sliderValue;
  CounterState(
      {required this.count, required this.name, required this.sliderValue});

  factory CounterState.initial() =>
      CounterState(count: 0, name: "", sliderValue: 0);

  CounterState copyWith({int? count, String? name, double? sliderValue}) =>
      CounterState(
          count: count ?? this.count,
          name: name ?? this.name,
          sliderValue: sliderValue ?? this.sliderValue);
}
