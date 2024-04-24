import 'package:final_project/presentation/Login&signup/signup/validition_email_and_password.dart';
import 'package:flutter/material.dart';

class customFormField extends StatelessWidget {
  customFormField({
    super.key,
    required this.text,
    required this.controller,
  });
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) return 'Field Required';
      },
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        labelText: text,
        //hintText: 'Enter username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class emailForm extends StatefulWidget {
  emailForm({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;
  @override
  State<emailForm> createState() => _emailFormState();
}

class _emailFormState extends State<emailForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validEmail(value!),
      controller: widget.controller,
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        labelText: 'Email',
        //hintText: 'Enter username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class passwordForm extends StatefulWidget {
  const passwordForm(
      {super.key, required this.label, required this.controller});
  final String label;

  final TextEditingController controller;
  @override
  State<passwordForm> createState() => _passwordFormState();
}

class _passwordFormState extends State<passwordForm> {
  bool isVisable = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validPassword(value!),
      controller: widget.controller,
      obscureText: !isVisable,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        labelText: widget.label,
        //hintText: 'Enter Password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isVisable = !isVisable;
            });
          },
          icon: Icon(
            !isVisable ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
