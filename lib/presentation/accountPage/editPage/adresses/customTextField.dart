import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.icon,
  });
  final String labelText, hintText;
  final TextEditingController controller;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        minLines: 1,
        maxLines: 4,
        controller: controller,
        decoration: InputDecoration(
          hintMaxLines: 3,
          prefixIcon: Icon(icon),
          contentPadding: EdgeInsets.all(16),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
