import 'package:flutter/material.dart';

class filterButton extends StatefulWidget {
  const filterButton({super.key});

  @override
  State<filterButton> createState() => _filterButtonState();
}

class _filterButtonState extends State<filterButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Transform.rotate(
            angle: 3.14 / 2,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.tune))),
      ],
    );
  }
}
