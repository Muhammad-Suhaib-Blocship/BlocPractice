part of 'counter_bloc.dart';

abstract class CounterEvent {}

class OnCounterIncrement extends CounterEvent {}

class OnCounterDecrement extends CounterEvent {}

class OnTextFieldValue extends CounterEvent {
  final String name;

  OnTextFieldValue({required this.name});
}

class OnSliderChanged extends CounterEvent {
  final double sliderValue;
  OnSliderChanged({required this.sliderValue});
}
