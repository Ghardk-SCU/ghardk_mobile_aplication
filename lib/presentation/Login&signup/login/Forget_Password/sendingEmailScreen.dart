import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/VerifyCodeScreen.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/backButton.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/descTitle.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/image.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/mainTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class sendingEmailScreen extends StatelessWidget {
  const sendingEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: BlocConsumer<UserCubit, UserState>(
            listener: (context, state) {
              if (state is getEmailForResetPasswordsuccess) {
                Get.to(() => verifyCodeScreen());
              } else if (state is getEmailForResetPasswordfaliure) {
                var snackBar = SnackBar(content: Text('${state.errMsg}'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const backButton(),
                  SizedBox(height: 70),
                  const title(text: 'Forgot Password'),
                  const descTitle(
                      desctitle:
                          "Enter your email , and we'll send you a code to reset your password. Stay secure!"),
                  const SizedBox(height: 20),
                  const image(
                      img: 'assets/images/forgotPassword/forgotPassword 1.png'),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  actionButton2(
                      child: state is getEmailForResetPasswordLoading
                          ? Center(child: CircularProgressIndicator())
                          : Text(
                              'Send Passcode',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                      ontap: () {
                        BlocProvider.of<UserCubit>(context)
                            .getEmailForResetPassword(
                                email: _emailController.text);
                      }),
                  const SizedBox(height: 50),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
