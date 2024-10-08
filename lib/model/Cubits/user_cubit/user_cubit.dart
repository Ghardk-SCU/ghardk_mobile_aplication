import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Models/userModel.dart';
import 'package:http/http.dart' as http;
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  Future logIn({required String email, required String password}) async {
    emit(LoginLoading());
    final response = await http.post(
        headers: {"Content-Type": "application/json"},
        Uri.parse('${EndPoint.baseUrl}${EndPoint.login}'),
        body: jsonEncode({
          ApiKey.email: email,
          ApiKey.password: password,
        }));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      await CacheNetwork.insertToCache(
          key: 'token', value: responseBody['data'][ApiKey.token]);
      /*   await CacheNetwork.insertToCache(
          key: 'id', value: responseBody['data'][ApiKey.id] ?? ""); */

      emit(Loginsuccess());
    } else {
      emit(Loginfaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future signUp(
      {required String fristName,
      required String lastName,
      required String userName,
      required String email,
      required String role,
      required String gender,
      required String date,
      required String nationalId,
      required String password,
      required String passwordConfirm}) async {
    emit(sigunUpLoading());
    final response =
        await http.post(Uri.parse('${EndPoint.baseUrl}${EndPoint.signUp}'),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({
              ApiKey.firstName: fristName,
              ApiKey.lastName: lastName,
              ApiKey.userName: userName,
              ApiKey.date: date,
              ApiKey.email: email,
              ApiKey.password: password,
              ApiKey.passwordConfirm: passwordConfirm,
              ApiKey.role: role,
              ApiKey.gender: gender,
              ApiKey.nationalID: nationalId,
            }));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      print(responseBody);
      emit(sigunUpsuccess());
    } else {
      emit(sigunUpfaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future VerifyAccount(
      {required String email, required String SecretToken}) async {
    emit(VerifyAccountLoading());
    final response = await http.post(
        Uri.parse('${EndPoint.baseUrl}${EndPoint.verifyAcc}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({ApiKey.email: email, 'secretToken': SecretToken}));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      emit(VerifyAccountsuccess());
    } else {
      emit(VerifyAccountfaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  userModel? userr;
  Future getUserProfile() async {
    emit(userInfoLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response = await http
        .get(Uri.parse('${EndPoint.baseUrl}${EndPoint.getUser}'), headers: {
      'Authorization': 'Bearer $token',
    });
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      userr = userModel.fromJson(responseBody);
      emit(userInfosuccess(user: userr!));
      // print("User : ${userr!.role}");
    } else {
      emit(userInfofaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future getEmailForResetPassword({required String email}) async {
    emit(getEmailForResetPasswordLoading());
    final response = await http.post(
        Uri.parse('${EndPoint.baseUrl}${EndPoint.forgetPasswordEmail}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({ApiKey.email: email}));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      await CacheNetwork.insertToCache(key: 'resetEmail', value: email);
      emit(getEmailForResetPasswordsuccess());
    } else {
      emit(getEmailForResetPasswordfaliure(
          errMsg: responseBody[ApiKey.message]));
    }
  }

  Future getSecretTokenForResetPassword({required String token}) async {
    emit(getSecretTokenForResetPasswordLoading());
    final response = await http.post(
        Uri.parse('${EndPoint.baseUrl}${EndPoint.forgetPasswordEmail}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          'email': await CacheNetwork.getCacheData(key: 'resetEmail'),
          'secretToken': token,
        }));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      await CacheNetwork.insertToCache(key: 'resetCode', value: token);
      emit(getSecretTokenForResetPasswordsuccess());
    } else {
      emit(getSecretTokenForResetPasswordfaliure(
          errMsg: responseBody[ApiKey.message]));
    }
  }

  Future ResetPassword(
      {required String newpassword, required String confirmnewpassword}) async {
    emit(ResetPasswordLoading());
    final response = await http.post(
        Uri.parse('${EndPoint.baseUrl}${EndPoint.resetPassword}'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          'secretToken': await CacheNetwork.getCacheData(key: 'resetCode'),
          ApiKey.email: await CacheNetwork.getCacheData(key: 'resetEmail'),
          'password': newpassword,
          'password_confirm': confirmnewpassword
        }));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      await CacheNetwork.deleteCacheItem(key: 'resetCode');
      await CacheNetwork.deleteCacheItem(key: 'resetEmail');
      emit(ResetPasswordsuccess());
    } else {
      emit(ResetPasswordfaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future<void> changePassword(
      {required String currpassword,
      required String newpassword,
      required String confirmnewpassword}) async {
    emit(changePasswordLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response = await http.patch(
        Uri.parse('${EndPoint.baseUrl}${EndPoint.changePassword}'),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode({
          "current_password": currpassword,
          "new_password": newpassword,
          "new_password_confirm": confirmnewpassword
        }));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      emit(changePasswordsuccess());
    } else {
      emit(changePasswordfaliure(errMsg: responseBody[ApiKey.message]));
    }
  }
}
