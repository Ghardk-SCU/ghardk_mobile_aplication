import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/forYouText.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerOffers/buyerCard/buyerOfferCard.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerOffers/category_list_view/categoryListView.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerOffers/offersText.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/BuyerPageInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
      appBar: AppBar(
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
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            buyerPageInfo(),
            SizedBox(height: 20),
            offersText(),
            SizedBox(
              height: 600,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: BuyercategoryListView(),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*  children: [
              buyerPageInfo(),
              SizedBox(height: 20),
              offersText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: BuyercategoryListView(),
              )
            ], */

 /*
    
  */           

