import 'package:flutter/material.dart';

class customEmailEditAccountTextField extends StatelessWidget {
  const customEmailEditAccountTextField({
    super.key,
    required TextEditingController emailcontroller,
    required this.enable,
    required this.lableText,
    required this.hintText,
  }) : _emailcontroller = emailcontroller;

  final TextEditingController _emailcontroller;
  final bool enable;
  final String lableText, hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        enabled: enable,
        controller: _emailcontroller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15),
          labelText: lableText,
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

class customEditAccountTextField extends StatelessWidget {
  const customEditAccountTextField({
    super.key,
    required this.enable,
    required this.lableText,
    required this.hintText,
  });

  final bool enable;
  final String lableText, hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        enabled: enable,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15),
          labelText: lableText,
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
