import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/Login&signup/login/loginPage.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/customDropDownMenu.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/custonFormField.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/datePickerfromField.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/loginButton.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/signupButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class signupForm extends StatefulWidget {
  const signupForm({super.key});

  @override
  State<signupForm> createState() => _signupFormState();
}

class _signupFormState extends State<signupForm> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool isChecked = false;
  String? role;
  String? _gender;
  final nationalIdController = TextEditingController();
  final fristNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final usernameController = TextEditingController();
  final dateInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isvisable = role == 'vendor' ? true : false;
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is sigunUpsuccess) {
          var snackBar = SnackBar(
              content: Text(
                  'You have been registered successfully , Please Login to start '));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Duration(milliseconds: 500);
          Get.to(() => loginPage());
        } else if (state is sigunUpfaliure) {
          var snackBar = SnackBar(content: Text('${state.errMsg}'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Flexible(
                    child: customFormField(
                      text: 'First Name',
                      controller: fristNameController,
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: customFormField(
                      text: 'Second Name',
                      controller: lastNameController,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: customDropDownButton(
                      value: role,
                      items: typeOfRole,
                      text: 'Role',
                      onChanged: (String? p0) {
                        setState(() {
                          role = p0;
                          if (role == 'vendor') isvisable = true;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 12),
                  Flexible(
                    child: customDropDownButton(
                      value: _gender,
                      items: gender,
                      text: 'Gender',
                      onChanged: (String? p0) {
                        setState(() {
                          _gender = p0;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Visibility(
                child: customFormField(
                    text: 'National ID', controller: nationalIdController),
                visible: isvisable,
              ),
              if (isvisable) SizedBox(height: 15),
              customFormField(text: 'Username', controller: usernameController),
              SizedBox(height: 15),
              emailForm(controller: emailController),
              const SizedBox(height: 15),
              passwordForm(label: 'Password', controller: passwordController),
              const SizedBox(height: 15),
              passwordForm(
                  label: 'Confirm Password',
                  controller: confirmPasswordController),
              SizedBox(height: 15),
              DatePickerFormField(dateInputController: dateInputController),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return const BorderSide(color: kMainColor);
                        }
                        return const BorderSide(color: kMainColor);
                      },
                    ),
                    checkColor: kMainColor,
                    activeColor: Colors.white,
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text('I agree to ',
                      style: TextStyle(
                          fontSize: 12,
                          color: kMainColor,
                          fontWeight: FontWeight.w400)),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width - 185,
                      child: const Text('Terms of Service and Privacy Policy.',
                          textAlign: TextAlign.start,
                          softWrap: true,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              color: kMainColor,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ],
              ),
              signUpButton(
                child: state is sigunUpLoading
                    ? Center(child: CircularProgressIndicator())
                    : signupText,
                visable: isChecked,
                ontap: () {
                  if (isChecked) {
                    if (formkey.currentState!.validate()) {
                      BlocProvider.of<UserCubit>(context).signUp(
                          fristName: fristNameController.text,
                          lastName: lastNameController.text,
                          userName: usernameController.text,
                          email: emailController.text,
                          role: role!,
                          gender: _gender!,
                          date: dateInputController.text,
                          nationalId: nationalIdController.text,
                          password: passwordController.text,
                          passwordConfirm: confirmPasswordController.text);
                    }
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 20),
              haveAccountButton(),
            ],
          ),
        );
      },
    );
  }
}

List<DropdownMenuItem<String>> typeOfRole = const [
  DropdownMenuItem(value: "vendor", child: Text("Vendor")),
  DropdownMenuItem(value: "customer", child: Text("Customer")),
];
List<DropdownMenuItem<String>> gender = const [
  DropdownMenuItem(value: "male", child: Text("Male")),
  DropdownMenuItem(value: "female", child: Text("Female")),
];

const signupText = Text(
  'SIGN UP',
  style:
      TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,
);
