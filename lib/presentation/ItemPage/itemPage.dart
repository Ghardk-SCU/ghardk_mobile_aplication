import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:final_project/presentation/ItemPage/Buttons/incrementAndDecrementButton.dart';
import 'package:final_project/presentation/ItemPage/Buttons/purcheaseButtons.dart';
import 'package:final_project/presentation/ItemPage/customItemPageAppBar/customItemPageAppBar.dart';
import 'package:final_project/presentation/ItemPage/imageItemPage.dart';
import 'package:final_project/presentation/ItemPage/nameAndPriceAndRatingItem.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/TabBarItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class itemPage extends StatefulWidget {
  const itemPage({super.key});

  @override
  State<itemPage> createState() => _itemPageState();
}

int count = 0;

class _itemPageState extends State<itemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(bottom: 20),
          physics: BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            customItemPageAppBar(),
            imageItemPage(),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const nameAndPriceAndRatingItem(),
                  const SizedBox(height: 30),
                  const tabBarsItem(),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      purcheaseButtons(),
                      Text('$count', style: TextStyle(fontSize: 20)),
                      Column(
                        children: [
                          incrementAndDecrementButton(
                            icon: Icons.add,
                            ontap: () {
                              setState(() {
                                count++;
                              });
                            },
                          ),
                          SizedBox(height: 10),
                          incrementAndDecrementButton(
                            icon: Icons.remove,
                            ontap: () {
                              setState(() {
                                if (count > 0) count--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
