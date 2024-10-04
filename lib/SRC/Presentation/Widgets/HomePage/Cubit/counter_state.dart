part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}
// extends CounterState

class CounterInitial extends CounterState {
  int count;
  CounterInitial({required this.count});
}

///if we have one state then we can do it in a simple way

class CounterValue {
  int count;
  CounterValue({required this.count});
}

abstract class CityState {}

class InitialCityState extends CityState {
  List<Map<String, dynamic>> city = CitiesNames.cities;
  InitialCityState({required this.city});
}

class FilteredCityState extends CityState {
  List<Map<String, dynamic>> cities = CitiesNames.cities;
  FilteredCityState({required this.cities});
}
