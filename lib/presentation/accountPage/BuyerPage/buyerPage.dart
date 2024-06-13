import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/BuyerPageInfo.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/tabBarBuyerPage/tabBarBuyerPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class buyerPage extends StatefulWidget {
  const buyerPage({super.key});

  @override
  State<buyerPage> createState() => _buyerPageState();
}

class _buyerPageState extends State<buyerPage> {
  @override
  bool isLiked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarBuyerImage(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            buyerPageInfo(),
            SizedBox(height: 10),
            tabBarBuyerPage(),
          ],
        ),
      ),
    );
  }

  AppBar customAppBarBuyerImage() {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Profile',
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.w500),
      ),
      backgroundColor: kMainColor,
      elevation: 3,
      leading: Padding(
        padding: EdgeInsets.only(left: 16),
        child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Get.back()),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border_outlined,
              color: isLiked ? Colors.red : Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
