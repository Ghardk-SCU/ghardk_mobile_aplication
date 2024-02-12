import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/homePage/homePageBody/Discount_list/discountMainContainer.dart';
import 'package:flutter/material.dart';

import 'discountSecondContainer.dart';

class discountItem extends StatefulWidget {
  const discountItem({super.key});

  @override
  State<discountItem> createState() => _discountItemState();
}

class _discountItemState extends State<discountItem> {
  double heightMainContainer = 270.0, widthMainContainer = 200.0;
  double animateleft = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Card(
        elevation: 0.8,
        child: Container(
          width: widthMainContainer,
          height: heightMainContainer,
          decoration: BoxDecoration(
            color: kMainColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              discountMainContainer(),
              Positioned(
                  right: -10,
                  top: heightMainContainer / 2,
                  child: IconButton(
                      iconSize: 30,
                      color: kScaffoldColor,
                      onPressed: () {
                        setState(() {
                          if (animateleft == 0)
                            animateleft = -155;
                          else
                            animateleft = 0;
                        });
                      },
                      icon: Icon(
                        Icons.navigate_next,
                      ))),
              AnimatedPositioned(
                duration: Duration(seconds: 1),
                left: animateleft,
                top: 50,
                child: Container(
                    width: widthMainContainer - 30,
                    height: heightMainContainer - 40,
                    child: discountSecondContainer()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
