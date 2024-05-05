import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search, size: 27),
          ),
          Flexible(
              child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 18),
            ),
          )),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.camera_alt_outlined, size: 27))
        ],
      ),
    );
  }
}
