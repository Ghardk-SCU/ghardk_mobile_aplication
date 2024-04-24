import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class customDropDownButton extends StatefulWidget {
  customDropDownButton({
    super.key,
    required this.value,
    required this.items,
    required this.text,
    required this.onChanged,
  });
  @override
  String? value;
  final List<DropdownMenuItem<String>> items;
  final String text;
  final void Function(String?)? onChanged;
  @override
  State<customDropDownButton> createState() => _customDropDownButtonState();
}

class _customDropDownButtonState extends State<customDropDownButton> {
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(width: 1)),
        ),
        hint: Text(widget.text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        value: widget.value,
        items: widget.items,
        elevation: 10,
        isExpanded: true,
        dropdownColor: kScaffoldColor,
        padding: EdgeInsets.symmetric(vertical: 12),
        onChanged: widget.onChanged);
  }
}
