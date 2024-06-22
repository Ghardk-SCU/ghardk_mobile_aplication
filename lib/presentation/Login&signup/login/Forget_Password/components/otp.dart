import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTP extends StatelessWidget {
  const OTP({
    super.key,
    required this.onSubmit,
  });
  final Function(String)? onSubmit;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: OtpTextField(
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        keyboardType: TextInputType.name,
        numberOfFields: 6,
        contentPadding: EdgeInsets.only(left: 7, right: 5),
        borderWidth: 1,
        borderRadius: BorderRadius.circular(8),
        showFieldAsBox: true,
        fieldWidth: 35,
        fieldHeight: 35,
        cursorColor: kMainColor,
        borderColor: kMainColor,
        onSubmit: onSubmit,
      ),
    );
  }
}

/*
Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: steel),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                controller: digit1Controller,
                style: Theme.of(context).textTheme.headlineMedium,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: '-'),
              ),
            ),
*/
