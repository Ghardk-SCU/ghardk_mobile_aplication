import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class backButton extends StatelessWidget {
  const backButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(FontAwesomeIcons.arrowLeft))
      ],
    );
  }
}
