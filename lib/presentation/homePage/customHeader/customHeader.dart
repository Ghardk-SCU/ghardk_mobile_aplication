import 'package:final_project/core/utilits/StyleData.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

import 'beSellarButton.dart';

class customHeader extends StatelessWidget {
  customHeader({super.key});
  String part1 = 'With Wrena Sho',
      part2 = 'lk, you will get the chance to work using your favorite hobby.';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          border: const Border(
            bottom: BorderSide(color: kMainColor, width: 3),
          ),
          borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(MediaQuery.of(context).size.width, 70)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 30),
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Use your own", style: StylesData.titleStyle),
                const SizedBox(height: 5),
                const Text("       skills to work!",
                    style: StylesData.titleStyle),
                const SizedBox(height: 20),
                Container(
                  width: 180,
                  child: RichText(
                    text: TextSpan(
                      style: StylesData.descStyle,
                      children: [
                        TextSpan(text: part1, style: StylesData.descStyle),
                        WidgetSpan(
                            child: Container(
                                width: 10.0,
                                child: Image.asset(
                                  'assets/images/Logo/Logo.png',
                                ))),
                        TextSpan(text: part2, style: StylesData.descStyle),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                beSellarButton(),
              ],
            ),
            Expanded(child: Image.asset("assets/images/homepageimage.jpg"))
          ]),
        ),
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, 0, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
