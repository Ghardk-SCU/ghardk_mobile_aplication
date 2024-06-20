import 'package:flutter/material.dart';

class DatePickerFormField extends StatelessWidget {
  const DatePickerFormField({
    super.key,
    required this.dateInputController,
  });

  final TextEditingController dateInputController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Date Of Birth',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      controller: dateInputController,
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1960),
            lastDate: DateTime.now());

        if (pickedDate != null) {
          dateInputController.text = pickedDate.toString().substring(0, 11);
        }
      },
    );
  }
}
