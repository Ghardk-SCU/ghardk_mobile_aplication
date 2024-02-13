import 'package:flutter/material.dart';

class loginForm extends StatefulWidget {
  const loginForm({super.key});

  @override
  State<loginForm> createState() => _passwordInputState();
}

class _passwordInputState extends State<loginForm> {
  bool isVisable = false;
  late String password, email;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        onChanged: (value) => email = value,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15),
          labelText: 'Email or Username',
          //hintText: 'Enter username',
          prefixIcon: const Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      const SizedBox(height: 20),
      TextFormField(
        onChanged: (value) => password = value,
        obscureText: !isVisable,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 15),
          labelText: 'Password',
          //hintText: 'Enter Password',
          prefixIcon: const Icon(Icons.password),
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
      ),
    ]);
  }
}
