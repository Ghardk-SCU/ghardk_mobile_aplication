import 'package:flutter/material.dart';

class categoryTopRatedItem extends StatefulWidget {
  const categoryTopRatedItem(
      {super.key, required this.img, required this.text});
  final String img, text;
  @override
  State<categoryTopRatedItem> createState() => _categoryTopRatedItemState();
}

class _categoryTopRatedItemState extends State<categoryTopRatedItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          Container(
            width: 160,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                widget.img,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
              ),
              child: Text(widget.text,
                  style: TextStyle(color: Colors.black, fontSize: 12)),
            ),
          ),
        ],
      ),
    );
  }
}
