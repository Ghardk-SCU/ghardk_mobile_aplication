import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class categoriesDropDowmItem extends StatefulWidget {
  categoriesDropDowmItem({
    super.key,
    required this.value,
    required this.items,
    required this.text,
    required this.onChanged,
  });
  @override
  int? value;
  final List<DropdownMenuItem<int>> items;
  final String text;
  final void Function(int?) onChanged;

  @override
  State<categoriesDropDowmItem> createState() => _categoriesDropDowmItemState();
}

class _categoriesDropDowmItemState extends State<categoriesDropDowmItem> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton2(
      hint: Text(widget.text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
      value: widget.value,
      items: widget.items,
      isExpanded: true,
      isDense: true,
      onChanged: widget.onChanged,
      buttonStyleData: ButtonStyleData(
          height: 45,
          padding: EdgeInsets.all(8),
          elevation: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 0.7),
            color: kScaffoldColor,
          )),
      dropdownStyleData: DropdownStyleData(
          elevation: 5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade400,
          )),
    ));
  }
}
