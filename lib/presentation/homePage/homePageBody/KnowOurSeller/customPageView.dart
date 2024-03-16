import 'package:final_project/presentation/homePage/homePageBody/KnowOurSeller/imagesForAdvirsment.dart';
import 'package:final_project/presentation/homePage/homePageBody/KnowOurSeller/arrowButtons.dart';
import 'package:flutter/material.dart';

class customPageView extends StatelessWidget {
  const customPageView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pagecontroller = PageController(initialPage: 0);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        imagesForAdvirsment(controller: pagecontroller),
        Positioned(
          top: 75,
          right: -10,
          child: arrowButtons(
            pageController: pagecontroller,
            icon: Icon(Icons.arrow_forward_ios),
            fun: () {
              pagecontroller.nextPage(
                  duration: Duration(microseconds: 500), curve: Curves.easeIn);
            },
          ),
        ),
        Positioned(
          top: 75,
          left: -10,
          child: arrowButtons(
            padding: EdgeInsets.only(left: 3),
            pageController: pagecontroller,
            icon: Icon(Icons.arrow_back_ios),
            fun: () {
              pagecontroller.previousPage(
                  duration: Duration(microseconds: 500), curve: Curves.easeIn);
            },
          ),
        ),
      ],
    );
  }
}
