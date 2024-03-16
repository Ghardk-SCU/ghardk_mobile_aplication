import 'package:final_project/presentation/homePage/homePageBody/KnowOurSeller/customPageView.dart';
import 'package:flutter/material.dart';

class advirsments extends StatelessWidget {
  const advirsments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: customPageView(),
    );
  }
}
