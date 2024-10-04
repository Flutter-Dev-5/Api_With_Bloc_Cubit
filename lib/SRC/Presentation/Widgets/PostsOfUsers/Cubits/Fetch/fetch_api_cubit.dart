import 'package:block_pratice/SRC/Application/Services/ApiServices/api_service.dart';
import 'package:block_pratice/SRC/Domain/Models/ApiModel/api_model.dart';
import 'package:block_pratice/imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetch_api_state.dart';

class FetchApiCubit extends Cubit<FetchApiState> {
  FetchApiCubit() : super(FetchApiInitial());

  Future<void> fetchData(String url) async {
    emit(FetchApiLoading());
    try {
      final apiModelCubit = await ApiServices.get(url: url);
      emit(FetchApiLoaded(response: apiModelCubit));
    } catch (e) {
      emit(FetchApiError(errors: "Failed To Load : ${e.toString()}"));
    }
  }
}
