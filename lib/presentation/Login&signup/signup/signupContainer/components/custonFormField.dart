import 'package:final_project/presentation/Login&signup/signup/validition_email_and_password.dart';
import 'package:flutter/material.dart';

class customFormField extends StatefulWidget {
  customFormField({
    super.key,
    required this.text,
    required this.onsave,
  });
  final String text;
  final Function(String?) onsave;
  @override
  State<customFormField> createState() => _customFormFieldState();
}

class _customFormFieldState extends State<customFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) return 'Field Required';
      },
      onSaved: widget.onsave,
      //keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        labelText: widget.text,
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
  });
  @override
  State<emailForm> createState() => _emailFormState();
}

class _emailFormState extends State<emailForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validEmail(value!),
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
  const passwordForm({super.key, required this.label});
  final String label;
  @override
  State<passwordForm> createState() => _passwordFormState();
}

class _passwordFormState extends State<passwordForm> {
  bool isVisable = false;
  late String? password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validPassword(value!),
      onSaved: (value) => password = value,
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
