import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/Login&signup/loginAndSignupScreen/loginAndSignupScreen.dart';
import 'package:final_project/presentation/accountPage/editPage/widget/customButton.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class changePassword extends StatelessWidget {
  const changePassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController currpassword = TextEditingController();
    TextEditingController newpassword = TextEditingController();
    TextEditingController confnewpassword = TextEditingController();
    return Scaffold(
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) async {
          if (state is changePasswordsuccess) {
            var snackBar = SnackBar(
                content: Text('Your Password had changed successfully'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Duration(milliseconds: 500);
            await CacheNetwork.deleteCacheItem(key: 'token');
            Get.off(loginAndSignupScreen());
          } else if (state is changePasswordfaliure) {
            var snackBar = SnackBar(content: Text('${state.errMsg}'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const customAccAppBar(text: 'Change Password'),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    accountInfoPasswordTextField(
                      text: 'Current Password',
                      controllerr: currpassword,
                    ),
                    SizedBox(height: 20),
                    accountInfoPasswordTextField(
                      text: 'New Password',
                      controllerr: newpassword,
                    ),
                    SizedBox(height: 20),
                    accountInfoPasswordTextField(
                      text: 'Confirm New Password',
                      controllerr: confnewpassword,
                    ),
                    const SizedBox(height: 50),
                    accountInfoButton(
                        ontap: () {
                          BlocProvider.of<UserCubit>(context).changePassword(
                              currpassword: currpassword.text,
                              newpassword: newpassword.text,
                              confirmnewpassword: confnewpassword.text);
                        },
                        child: state is changePasswordLoading
                            ? Center(child: CircularProgressIndicator())
                            : Center(
                                child: Text('Change',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)))),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class accountInfoPasswordTextField extends StatefulWidget {
  const accountInfoPasswordTextField(
      {super.key, required this.text, required this.controllerr});
  final String text;
  final TextEditingController controllerr;
  @override
  State<accountInfoPasswordTextField> createState() =>
      _accountInfoPasswordTextFieldState();
}

class _accountInfoPasswordTextFieldState
    extends State<accountInfoPasswordTextField> {
  @override
  bool isVisable = false;
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controllerr,
      obscureText: !isVisable,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        labelText: widget.text,
        //hintText: 'Enter Password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isVisable = !isVisable;
            });
          },
          icon: Icon(
            !isVisable ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
