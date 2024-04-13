import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/checkBox.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/custonFormField.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/loginButton.dart';
import 'package:final_project/presentation/Login&signup/signup/signupContainer/components/signupButton.dart';
import 'package:final_project/presentation/mainPage/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signupForm extends StatefulWidget {
  const signupForm({super.key});

  @override
  State<signupForm> createState() => _signupFormState();
}

class _signupFormState extends State<signupForm> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          emailForm(),
          SizedBox(height: 15),
          customFormField(
            text: 'Username',
            onsave: (p0) {},
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Flexible(
                child: customFormField(
                  text: 'First Name',
                  onsave: (p0) {},
                ),
              ),
              SizedBox(width: 10),
              Flexible(
                child: customFormField(
                  text: 'Second Name',
                  onsave: (p0) {},
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          passwordForm(label: 'Password'),
          SizedBox(height: 15),
          passwordForm(label: 'Confirm Password'),
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
              Text('I agree to ',
                  style: TextStyle(
                      fontSize: 12,
                      color: kMainColor,
                      fontWeight: FontWeight.w400)),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width - 185,
                  child: Text('Terms of Service and Privacy Policy.',
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
            visable: isChecked,
            ontap: () {
              if (isChecked) {
                if (formkey.currentState!.validate()) {
                  Get.to(mainPage());
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
  }
}
