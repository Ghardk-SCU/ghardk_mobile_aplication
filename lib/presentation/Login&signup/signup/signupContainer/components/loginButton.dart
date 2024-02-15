import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class haveAccountButton extends StatelessWidget {
  const haveAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an Account? ", style: TextStyle(color: kMainColor)),
        InkWell(
            onTap: () {},
            child: const Text('Login',
                style: TextStyle(
                    fontSize: 14,
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline))),
      ],
    );
  }
}
