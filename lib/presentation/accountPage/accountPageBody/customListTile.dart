import 'package:flutter/material.dart';

class customListTile extends StatelessWidget {
   customListTile(
      {super.key,
      required this.title,
      this.icon = Icons.abc ,
      required this.ontap});
  final String title;
  IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      title: Text(title, style: TextStyle(fontSize: 20, color: Colors.black)),
      leading: Icon(icon, size: 30),
      trailing: Icon(Icons.navigate_next, size: 30),
    );
  }
}
