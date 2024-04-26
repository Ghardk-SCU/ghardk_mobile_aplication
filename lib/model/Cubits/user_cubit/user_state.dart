part of 'user_cubit.dart';

sealed class UserState {}

final class UserInitial extends UserState {}

final class sigunUpInitial extends UserState {}

final class sigunUpLoading extends UserState {}

final class sigunUpsuccess extends UserState {}

final class sigunUpfaliure extends UserState {
  final String errMsg;
  sigunUpfaliure({required this.errMsg});
}

final class LoginInitial extends UserState {}

final class LoginLoading extends UserState {}

final class Loginsuccess extends UserState {}

final class Loginfaliure extends UserState {
  final String errMsg;
  Loginfaliure({required this.errMsg});
}

final class userInfoInitial extends UserState {}

final class userInfoLoading extends UserState {}

final class userInfosuccess extends UserState {
  final userModel user;
  userInfosuccess({required this.user});
}

final class userInfofaliure extends UserState {
  final String errMsg;
  userInfofaliure({required this.errMsg});
}
