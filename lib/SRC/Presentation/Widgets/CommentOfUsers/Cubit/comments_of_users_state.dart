part of 'comments_of_users_cubit.dart';

@immutable
abstract class CommentsOfUsersState {}

class CommentsOfUsersInitial extends CommentsOfUsersState {}

class CommentsOfUsersLoading extends CommentsOfUsersState {}

class CommentsLoaded extends CommentsOfUsersState {
  final CommentApiModel response;
  CommentsLoaded(this.response);
}

class CommentsOfUsersError extends CommentsOfUsersState {
  final String error;
  CommentsOfUsersError(this.error);
}
