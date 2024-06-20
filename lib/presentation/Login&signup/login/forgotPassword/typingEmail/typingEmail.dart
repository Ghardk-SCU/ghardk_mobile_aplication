import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/backButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/descTitle.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/image.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/mainTitle.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/emailConfirmation/emailConfirmation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class typingEmail extends StatelessWidget {
  const typingEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is getEmailForResetPasswordsuccess) {
          var snackBar =
              SnackBar(content: Text('You have been Login successfully'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Duration(milliseconds: 500);
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(64),
                      topRight: Radius.circular(64))),
              duration: Duration(hours: 1),
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              content: emailConfirmation()));
        } else if (state is getEmailForResetPasswordfaliure) {
          var snackBar = SnackBar(content: Text('${state.errMsg}'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const backButton(),
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
                        .getEmailForResetPassword(email: _emailController.text);
                  }),
              const SizedBox(height: 50),
            ],
          ),
        );
      },
    );
  }
}
