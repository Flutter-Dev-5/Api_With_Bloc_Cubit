part of 'cities_cubit.dart';

@immutable
abstract class CitiesState {}

class CitiesInitial extends CitiesState {
  final List<Map<String, dynamic>> allCities;
  CitiesInitial({required this.allCities});
}

class FilteredCity extends CitiesState {
  final List<Map<String, dynamic>> filteredCity;
  FilteredCity({required this.filteredCity});
}
