import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/backButton.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/descTitle.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/image.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/mainTitle.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/otp.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/resetPasswordScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class verifyCodeScreen extends StatelessWidget {
  const verifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String otpp;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: BlocConsumer<UserCubit, UserState>(
            listener: (context, state) {
              if (state is getSecretTokenForResetPasswordsuccess) {
                Get.to(() => resetPasswordScreen());
              } else if (state is getSecretTokenForResetPasswordfaliure) {
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
                  const title(text: 'Passcode'),
                  const descTitle(
                      desctitle:
                          "Check your email or phone for a passcode. Enter it below to securely reset your password."),
                  const SizedBox(height: 20),
                  const image(img: 'assets/images/forgotPassword/email 2.png'),
                  const SizedBox(height: 20),
                  OTP(
                    onSubmit: (p0) {
                      otpp = p0;
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Code expires in: 00:54",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn’t receive code? ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      InkWell(
                        onTap: () async {
                          print(otpp);
                          print(await CacheNetwork.getCacheData(
                              key: 'resetEmail'));
                        },
                        child: const Text(
                          "Resend Code",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0f24fe)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  actionButton2(
                      child: state is getSecretTokenForResetPasswordLoading
                          ? const Center(child: CircularProgressIndicator())
                          : const Text(
                              'Verify',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                      ontap: () async {
                        BlocProvider.of<UserCubit>(context)
                            .getSecretTokenForResetPassword(token: otpp);
                      }),
                  SizedBox(height: 20),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
