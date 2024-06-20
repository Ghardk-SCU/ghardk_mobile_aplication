import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/backButton.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/descTitle.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/image.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/mainTitle.dart';
import 'package:final_project/presentation/Login&signup/login/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class resetPasswordScreen extends StatefulWidget {
  const resetPasswordScreen({super.key});

  @override
  State<resetPasswordScreen> createState() => _resetPasswordScreenState();
}

bool isVisable = false;
TextEditingController passController = TextEditingController();
TextEditingController passConfirmController = TextEditingController();

class _resetPasswordScreenState extends State<resetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: BlocConsumer<UserCubit, UserState>(
            listener: (context, state) {
              if (state is ResetPasswordsuccess) {
                var snackBar = SnackBar(
                    content: Text(
                        'Password Reset Successfully, Please try login again'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Get.to(() => loginPage());
              } else if (state is ResetPasswordfaliure) {
                var snackBar = SnackBar(content: Text('${state.errMsg}'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const backButton(),
                  const SizedBox(height: 70),
                  const title(text: 'Reset Password'),
                  const descTitle(
                      desctitle:
                          "Protect your account by entering a new password below. Make it strong, and you're all set."),
                  const SizedBox(height: 20),
                  const image(
                      img: 'assets/images/forgotPassword/newPassword 1.png'),
                  const SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      controller: passController,
                      obscureText: !isVisable,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                        labelText: 'Password',
                        //hintText: 'Enter Password',
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisable = !isVisable;
                            });
                          },
                          icon: Icon(
                            !isVisable
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      controller: passConfirmController,
                      obscureText: !isVisable,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                        labelText: 'Confirm Password',
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisable = !isVisable;
                            });
                          },
                          icon: Icon(
                            !isVisable
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  actionButton2(
                    child: state is ResetPasswordLoading
                        ? Center(child: CircularProgressIndicator())
                        : const Text(
                            'Reset',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                    ontap: () {
                      BlocProvider.of<UserCubit>(context).ResetPassword(
                          newpassword: passController.text,
                          confirmnewpassword: passConfirmController.text);
                    },
                  ),
                  SizedBox(height: 30),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
