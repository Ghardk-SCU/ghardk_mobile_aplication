import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/Login&signup/login/components/forgotPasswordButton.dart';
import 'package:final_project/presentation/Login&signup/login/components/loginButton.dart';
import 'package:final_project/presentation/Login&signup/login/components/loginForm.dart';
import 'package:final_project/presentation/Login&signup/login/components/signupButton.dart';
import 'package:final_project/presentation/mainPage/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class loginContainer extends StatelessWidget {
  loginContainer({
    super.key,
  });
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is Loginsuccess) {
          var snackBar =
              SnackBar(content: Text('You have been Login successfully'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          //context.read<UserCubit>().getUserProfile();
          Duration(milliseconds: 500);
          Get.to(() => mainPage());
        } else if (state is Loginfaliure) {
          var snackBar = SnackBar(content: Text('${state.errMsg}'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(left: 24, right: 24, top: 20, bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(
                    fontSize: 48,
                    color: kMainColor,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              loginForm(
                emailcontroller: _emailController,
                passwordcontroller: _passwordController,
              ),
              forgotPasswordButton(),
              SizedBox(height: 5),
              loginButton(
                child: state is LoginLoading
                    ? Center(child: CircularProgressIndicator())
                    : loginText,
                ontap: () {
                  BlocProvider.of<UserCubit>(context).logIn(
                      email: _emailController.text,
                      password: _passwordController.text);
                  print(
                      '${_emailController.text}  ${_passwordController.text}');
                },
              ),
              SizedBox(height: 30),
              signupButton(),
            ],
          ),
        );
      },
    );
  }
}

const loginText = Text(
  'LOGIN',
  style:
      TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,
);
