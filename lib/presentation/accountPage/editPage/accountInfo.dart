import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/accountPage/editPage/widget/accountInfoTextFieldButton.dart';
import 'package:final_project/presentation/accountPage/editPage/widget/customEditAccountTextField.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class accountInfo extends StatelessWidget {
  const accountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailcontroller = TextEditingController();
    return Scaffold(
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is userInfofaliure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errMsg),
              ),
            );
          }
        },
        builder: (context, state) {
          return state is userInfoLoading
              ? const Center(child: CircularProgressIndicator())
              : state is userInfosuccess
                  ? Column(
                      children: [
                        const customAccAppBar(text: 'Account Info'),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customEmailEditAccountTextField(
                                emailcontroller: _emailcontroller,
                                enable: true,
                                hintText: state.user.email,
                                lableText: 'Email',
                              ),
                              customEditAccountTextField(
                                enable: false,
                                hintText: state.user.firstName,
                                lableText: 'First Name',
                              ),
                              customEditAccountTextField(
                                enable: false,
                                hintText: state.user.lastName,
                                lableText: 'Last Name',
                              ),
                              customEditAccountTextField(
                                enable: false,
                                hintText: state.user.role,
                                lableText: 'Role',
                              ),
                              const SizedBox(height: 30),
                              accountInfoTextFieldButton(ontap: () {}),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Container();
        },
      ),
    );
  }
}
