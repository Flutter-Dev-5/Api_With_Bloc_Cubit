part of 'new_counter_cubit.dart';

@immutable
abstract class NewCounterState {}

class NewCounterInitial extends NewCounterState {
  final int counterValueOfNew;
  NewCounterInitial({required this.counterValueOfNew});
}
