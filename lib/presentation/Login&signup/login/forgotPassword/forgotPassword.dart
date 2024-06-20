import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/resetDone/resetDone.dart';

import 'package:flutter/material.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('ClickMe'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(64),
                        topRight: Radius.circular(64))),
                duration: Duration(hours: 1),
                backgroundColor: kScaffoldColor,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                content: resetDone()));
          },
        ),
      ),
    );
  }
}
