import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/homePage/homePageBody/Discount_list/discountMainContainer.dart';
import 'package:final_project/presentation/homePage/homePageBody/Discount_list/discountSecondContainer.dart';
import 'package:flutter/material.dart';

class discountContaier extends StatefulWidget {
  const discountContaier({super.key});

  @override
  State<discountContaier> createState() => _discountContaierState();
}

class _discountContaierState extends State<discountContaier> {
  @override
  Widget build(BuildContext context) {
    double heightMainContainer = 270.0, widthMainContainer = 200.0;
    double movingRight = 0;
    return Card(
      color: kScaffoldColor,
      elevation: 1,
      child: Stack(
        children: [
          AnimatedPositioned(
            right: -10,
            duration: Duration(seconds: 1),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: kMainColor),
              width: widthMainContainer,
              height: heightMainContainer,
              child: discountMainContainer(),
            ),
          ),
          //-----------------------------------------------------------------------
/*           Positioned(
              right: -10,
              top: heightMainContainer / 2,
              child: IconButton(
                  iconSize: 30,
                  color: kScaffoldColor,
                  onPressed: () {
                    setState(() {
                      if (movingRight == 0)
                        movingRight = 140;
                      else
                        movingRight = 0;
                    });
                  },
                  icon: Icon(
                    Icons.navigate_next,
                  ))), */
          //-------------------------------------------------------------------------
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: widthMainContainer - 30,
              height: heightMainContainer - 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kScaffoldColor,
              ),
              child: discountSecondContainer(),
            ),
          ),
        ],
      ),
    );
  }
}

/*Container(
             width: widthMainContainer,
             height: heightMainContainer,
             child: Stack(
                children: [
              discountMainContainer(),
              Positioned(
                left: 0,
                bottom: 0,
                child: Container(
                    width: widthMainContainer - 30,
                    height: heightMainContainer - 50,
                    child: discountSecondContainer()),
              ),
            ],
             ),
          ),     */
