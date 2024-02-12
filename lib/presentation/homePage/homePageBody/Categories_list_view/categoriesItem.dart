import 'package:flutter/material.dart';

class categoriesItem extends StatefulWidget {
  const categoriesItem(
      {super.key, required this.CategoryName, required this.img});
  final String CategoryName, img;
  @override
  State<categoriesItem> createState() => _categoriesItemState();
}

class _categoriesItemState extends State<categoriesItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 0.5, color: Colors.black),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  widget.img,
                  fit: BoxFit.cover,
                  width: 130,
                  height: 120,
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: -25,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(-30 / 360),
                child: Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Text(widget.CategoryName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 12)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
