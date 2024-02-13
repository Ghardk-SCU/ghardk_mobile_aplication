import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/loginPage.dart';
import 'package:flutter/material.dart';

class loginAndSignupButtons extends StatelessWidget {
  const loginAndSignupButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const loginPage()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text('LOGIN',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: kMainColor)),
          ),
        ),
        SizedBox(width: 16),
        InkWell(
          onTap: () {
            /*  Navigator.push(context,
                MaterialPageRoute(builder: (context) => const signupPage())); */
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              color: kMainColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text('SIGN UP',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
