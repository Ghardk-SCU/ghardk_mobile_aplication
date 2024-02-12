import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class favCategory extends StatefulWidget {
  favCategory({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  State<favCategory> createState() => _favCategoryState();
}

class _favCategoryState extends State<favCategory> {
  bool choose = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          choose = !choose;
        });
      },
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: kMainColor),
          borderRadius: BorderRadius.circular(8),
          color: choose ? kMainColor : Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: choose ? Colors.white : kMainColor,
                size: 17,
              ),
              SizedBox(width: 5),
              Text(widget.text,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: choose ? Colors.white : kMainColor))
            ],
          ),
        ),
      ),
    );
  }
}
