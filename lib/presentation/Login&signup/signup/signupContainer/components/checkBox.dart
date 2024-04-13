import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class chkBox extends StatefulWidget {
  chkBox({super.key, this.isChecked = false});
  bool isChecked;
  @override
  State<chkBox> createState() => _chkBoxState();
}

class _chkBoxState extends State<chkBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
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
      value: widget.isChecked,
      onChanged: (value) {
        setState(() {
          widget.isChecked = value!;
        });
      },
    );
  }
}
