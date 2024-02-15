import 'package:flutter/material.dart';

class back extends StatelessWidget {
  const back({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              //FontAwesomeIcons.arrowLeft,
              Icons.keyboard_arrow_left,
              size: 30,
              color: Colors.white,
            ))
      ],
    );
  }
}
