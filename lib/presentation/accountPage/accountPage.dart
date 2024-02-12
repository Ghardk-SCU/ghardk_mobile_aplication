import 'package:final_project/core/utilits/forYouText.dart';
import 'package:final_project/presentation/accountPage/accountPageBody/accountPageBody.dart';
import 'package:final_project/presentation/accountPage/customAppBar/customAccountAppBar.dart';
import 'package:flutter/material.dart';

class accountPage extends StatelessWidget {
  const accountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAccountAppBar(),
          accountPageBody(),
        ],
      ),
    );
  }
}
