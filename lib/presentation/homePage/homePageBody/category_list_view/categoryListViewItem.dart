import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class categoryListViewItem extends StatefulWidget {
  categoryListViewItem({super.key, required this.text});
  final String text;

  @override
  State<categoryListViewItem> createState() => _categoryListViewItemState();
}

class _categoryListViewItemState extends State<categoryListViewItem> {
  bool changeColor = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeColor = !changeColor;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: changeColor ? Colors.black : Colors.white),
          ),
        ),
        height: 30,
        decoration: BoxDecoration(
            color:
                changeColor ? Color.fromARGB(255, 244, 244, 248) : kMainColor,
            border: Border.all(color: kMainColor),
            borderRadius: BorderRadius.circular(6)),
      ),
    );
  }
}
