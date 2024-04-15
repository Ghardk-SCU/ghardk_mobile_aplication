import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/backButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/descTitle.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/image.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/mainTitle.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/resetDone/resetDone.dart';
import 'package:flutter/material.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({super.key});

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  bool isVisable = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          backButton(),
          title(text: 'Reset Password'),
          descTitle(
              desctitle:
                  "Protect your account by entering a new password below. Make it strong, and you're all set."),
          SizedBox(height: 20),
          image(img: 'assets/images/forgotPassword/newPassword 1.png'),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: TextFormField(
              // onChanged: (value) => password = value,
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
                    !isVisable ? Icons.visibility : Icons.visibility_off,
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
              // onChanged: (value) => password = value,
              obscureText: !isVisable,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                labelText: 'Confirm Password',
                //hintText: 'Enter Password',
                prefixIcon: const Icon(Icons.password),
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
            ),
          ),
          SizedBox(height: 20),
          actionButton(
              text: 'Reset Password',
              ontap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(64),
                            topRight: Radius.circular(64))),
                    duration: Duration(hours: 1),
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    content: resetDone()));
              }),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
