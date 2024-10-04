import 'package:bloc/bloc.dart';
import 'package:block_pratice/SRC/Data/CityNames/cities_names.dart';
import 'package:meta/meta.dart';

part 'cities_state.dart';

class CitiesCubit extends Cubit<CitiesState> {
  CitiesCubit() : super(CitiesInitial(allCities: CitiesNames.cities));

  void searchCityByName(String name) {
    if (name.isEmpty) {
      emit(CitiesInitial(allCities: CitiesNames.cities));
    } else {
      final List<Map<String, dynamic>> filteredCityName = CitiesNames.cities
          .where((search) => search['city']
              .toString()
              .toLowerCase()
              .contains(name.toString().toLowerCase()))
          .toList();
      emit(FilteredCity(filteredCity: filteredCityName));
    }
  }
}
