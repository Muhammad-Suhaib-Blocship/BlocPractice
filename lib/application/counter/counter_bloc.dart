import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<OnCounterIncrement>((event, emit) => onCounterIncrement(event, emit));
    on<OnCounterDecrement>((event, emit) => onCounterDecrement(event, emit));
    on<OnTextFieldValue>((event, emit) => onTextFieldValue(event, emit));
    on<OnSliderChanged>((event, emit) => onSliderChanged(event, emit));
  }
  void onCounterIncrement(OnCounterIncrement event, emit) {
    emit(state.copyWith(count: state.count + 1));
  }

  void onCounterDecrement(OnCounterDecrement event, emit) {
    emit(state.copyWith(count: state.count - 1));
  }

  void onTextFieldValue(OnTextFieldValue event, emit) {
    emit(state.copyWith(name: event.name));
  }

  void onSliderChanged(OnSliderChanged event, emit) {
    emit(state.copyWith(sliderValue: event.sliderValue));
  }
}
