import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class accountInfo extends StatelessWidget {
  const accountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
         
         children: [
            customAccAppBar(text: 'Account Info'), 
            SizedBox(height: 30), 
      
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start ,
                 children: [
                    Text('Email' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500)),
                    SizedBox(height: 7),
                    accountInfoTextField(text: 'Email',),
                    SizedBox(height: 20),
                    Text('First Name' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500)),
                    SizedBox(height: 7),
                    accountInfoTextField(text: 'Mahmoud'),
                    SizedBox(height: 20),
                    Text('Last Name' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500)),
                    SizedBox(height: 7),
                    accountInfoTextField(text: 'Elsayed'),
                    SizedBox(height: 30),
                    accountInfoTextFieldButton(ontap: () {}),
                 ],
              ),
            ),
         ],
      ),
    );
  }
}

class accountInfoTextFieldButton extends StatelessWidget {
  const accountInfoTextFieldButton({
    super.key, required this.ontap,
  });
  final VoidCallback ontap ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
         width: double.infinity,
         decoration: BoxDecoration(
           color: kMainColor,
           borderRadius: BorderRadius.circular(8),
         ),
         child: Center(child: Text('Save' , style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.w600))),
      ),
    );
  }
}

class accountInfoTextField extends StatelessWidget {
  const accountInfoTextField({
    super.key, required this.text,
  });
  final String text ; 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 16),
       width: double.infinity,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(8),
         color: Color(0xff101010).withOpacity(0.15),
         
       ),
       child: Text(text, style: const TextStyle(fontSize: 16 , fontWeight: FontWeight.w500, color: Color.fromARGB(108, 16, 16, 16))),
    );
  }
}