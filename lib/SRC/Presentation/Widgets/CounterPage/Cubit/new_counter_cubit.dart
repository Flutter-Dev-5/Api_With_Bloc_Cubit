import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'new_counter_state.dart';

class NewCounterCubit extends Cubit<NewCounterState> {
  NewCounterCubit() : super(NewCounterInitial(counterValueOfNew: 0));

  /// To increment The Counter Value

  void incrementCounterValue() {
    final counterState = state as NewCounterInitial;
    emit(NewCounterInitial(
        counterValueOfNew: counterState.counterValueOfNew + 1));
  }

  /// To Decrement the Counter Value

  void decrementCounterValue() {
    final counterState = state as NewCounterInitial;
    if (counterState.counterValueOfNew == 0) {
    } else {
      emit(NewCounterInitial(
          counterValueOfNew: counterState.counterValueOfNew - 1));
    }
  }
}
