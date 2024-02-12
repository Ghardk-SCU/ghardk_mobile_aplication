import 'package:final_project/core/utilits/StyleData.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/customCircleAvatar.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:final_project/presentation/homePage/homePageBody/CustomButton.dart';
import 'package:flutter/material.dart';

class discountMainContainer extends StatefulWidget {
  discountMainContainer({super.key, this.moveRight = 0});
  double moveRight;
  @override
  State<discountMainContainer> createState() => _discountMainContainerState();
}

class _discountMainContainerState extends State<discountMainContainer> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8, left: 8),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customCircleAvatar(image: 'assets/images/nasr.png'),
              Text('Mohamed Nasr', style: StylesData.nameSallerStyle),
              customButton(
                color: Colors.transparent,
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isLiked ? Colors.red : Colors.white,
                ),
                ontap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Amazing Bunny",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                const SizedBox(
                  width: 110,
                  child: Text(loream,
                      maxLines: 7,
                      softWrap: true,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey)),
                ),
                rating(ratenum: 3.5, itemsize: 10, itempadding: 0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (widget.moveRight == 0)
                        widget.moveRight = 140;
                      else
                        widget.moveRight = 140;
                    });
                  },
                  child: Text("Add to cart",
                      style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kScaffoldColor,
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
