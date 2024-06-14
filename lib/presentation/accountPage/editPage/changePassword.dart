import 'package:final_project/presentation/accountPage/editPage/widget/customButton.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';

class changePassword extends StatelessWidget {
  const changePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const customAccAppBar(text: 'Change Password'),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const accountInfoPasswordTextField(text: 'Current Password'),
                const SizedBox(height: 20),
                const accountInfoPasswordTextField(text: 'New Password'),
                const SizedBox(height: 20),
                const accountInfoPasswordTextField(
                    text: 'Confirm New Password'),
                const SizedBox(height: 50),
                accountInfoButton(ontap: () {}, text: 'Change'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class accountInfoPasswordTextField extends StatefulWidget {
  const accountInfoPasswordTextField({super.key, required this.text});
  final String text;
  @override
  State<accountInfoPasswordTextField> createState() =>
      _accountInfoPasswordTextFieldState();
}

class _accountInfoPasswordTextFieldState
    extends State<accountInfoPasswordTextField> {
  @override
  bool isVisable = false;
  Widget build(BuildContext context) {
    return TextFormField(
      //controller: widget.passwordcontroller,
      obscureText: !isVisable,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        labelText: widget.text,
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
