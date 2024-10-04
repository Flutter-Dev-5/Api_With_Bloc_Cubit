import 'package:block_pratice/SRC/Data/CityNames/cities_names.dart';
import 'package:block_pratice/imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial(count: 0));

  /// To Increment the Counter Value
  void increment() {
    final counterState = state as CounterInitial;
    emit(CounterInitial(count: counterState.count + 1));
  }

  /// To Decrement the Counter Value

  void decrement() {
    final counterState = state as CounterInitial;
    emit(CounterInitial(count: counterState.count - 1));
  }
}

class CounterCubitClass extends Cubit<CounterValue> {
  CounterCubitClass() : super(CounterValue(count: 0));

  void increment() {
    emit(CounterValue(count: state.count + 1));
  }

  void decrement() {
    emit(CounterValue(count: state.count - 1));
  }
}

///Search The Cities By Its Name

class CitiesCubit extends Cubit<CityState> {
  CitiesCubit() : super(InitialCityState(city: CitiesNames.cities));

  void search(String cityName) {
    if (cityName.isEmpty) {
      emit(InitialCityState(city: CitiesNames.cities));
    } else {
      List<Map<String, dynamic>> filter = CitiesNames.cities
          .where((city) => city['city']
              .toString()
              .toLowerCase()
              .contains(cityName.toString().toLowerCase()))
          .toList();
      emit(FilteredCityState(cities: filter));
    }
  }
}
