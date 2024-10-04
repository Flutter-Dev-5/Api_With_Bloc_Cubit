part of 'fetch_api_cubit.dart';

@immutable
abstract class FetchApiState {}

/// The Initial State
class FetchApiInitial extends FetchApiState {}

/// When the API is Called, Loading Starts
class FetchApiLoading extends FetchApiState {}

/// When the Data is Loaded
class FetchApiLoaded extends FetchApiState {
  final ApiModel response;
  FetchApiLoaded({required this.response});
}

///When their is any Error in Api Response
class FetchApiError extends FetchApiState {
  final String errors;
  FetchApiError({required this.errors});
}
