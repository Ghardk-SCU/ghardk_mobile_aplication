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

final class getEmailForResetPasswordInitial extends UserState {}

final class getEmailForResetPasswordLoading extends UserState {}

final class getEmailForResetPasswordsuccess extends UserState {}

final class getEmailForResetPasswordfaliure extends UserState {
  final String errMsg;
  getEmailForResetPasswordfaliure({required this.errMsg});
}

final class getSecretTokenForResetPasswordInitial extends UserState {}

final class getSecretTokenForResetPasswordLoading extends UserState {}

final class getSecretTokenForResetPasswordsuccess extends UserState {}

final class getSecretTokenForResetPasswordfaliure extends UserState {
  final String errMsg;
  getSecretTokenForResetPasswordfaliure({required this.errMsg});
}

final class VerifyAccountInitial extends UserState {}

final class VerifyAccountLoading extends UserState {}

final class VerifyAccountsuccess extends UserState {}

final class VerifyAccountfaliure extends UserState {
  final String errMsg;
  VerifyAccountfaliure({required this.errMsg});
}

final class ResetPasswordInitial extends UserState {}

final class ResetPasswordLoading extends UserState {}

final class ResetPasswordsuccess extends UserState {}

final class ResetPasswordfaliure extends UserState {
  final String errMsg;
  ResetPasswordfaliure({required this.errMsg});
}

final class changePasswordInitial extends UserState {}

final class changePasswordLoading extends UserState {}

final class changePasswordsuccess extends UserState {}

final class changePasswordfaliure extends UserState {
  final String errMsg;
  changePasswordfaliure({required this.errMsg});
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
