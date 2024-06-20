import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/Forget_Password/components/otp.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    this.onSubmitCode,
    required this.ontap,
    required this.child,
  });
  final Function(String)? onSubmitCode;
  final VoidCallback ontap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        elevation: 1,
        child: Container(
          padding: EdgeInsets.all(8),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Verfiy Account',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kMainColor),
              ),
              const SizedBox(height: 10),
              const Text(
                'Check Your Account To get Code and Submit it here to verify Account',
                maxLines: 2,
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(height: 30),
              OTP(onSubmit: onSubmitCode),
              SizedBox(height: 30),
              actionButton2(child: child, ontap: ontap),
            ],
          ),
        ));
  }
}
