import 'package:final_project/presentation/homePage/appBar/appBar.dart';
import 'package:final_project/presentation/homePage/homePageBody/homePageBody.dart';
import 'package:flutter/material.dart';

import 'customHeader/customHeader.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 244, 248),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(),
              SizedBox(height: 30),
              customHeader(),
              SizedBox(height: 20),
              homePageBody(),
            ],
          ),
        ));
  }
}
