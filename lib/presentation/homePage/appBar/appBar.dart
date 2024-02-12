import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        color: Color.fromARGB(255, 244, 244, 248),
        elevation: 0.6,
        child: Container(
          padding: EdgeInsets.only(left: 8),
          width: double.infinity,
          //height: 50,
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
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined, size: 27))
            ],
          ),
        ),
      ),
    );
  }
}
