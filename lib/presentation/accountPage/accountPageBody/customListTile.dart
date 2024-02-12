import 'package:flutter/material.dart';

class customListTile extends StatelessWidget {
  const customListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.ontap});
  final String title;
  final IconData icon;
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
