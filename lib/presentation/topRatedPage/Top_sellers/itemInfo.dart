import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:final_project/presentation/homePage/homePageBody/CustomButton.dart';
import 'package:flutter/material.dart';

class itemInfo extends StatefulWidget {
  const itemInfo({super.key});

  @override
  State<itemInfo> createState() => _itemInfoState();
}

class _itemInfoState extends State<itemInfo> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 45,
                height: 45,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/nasr.png'),
                  radius: 50,
                ),
              ),
              customButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isLiked ? Colors.red : Colors.black,
                ),
                color: Colors.transparent,
                ontap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Mohammed Nasr',
              style: TextStyle(fontSize: 11, color: kMainColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '1.5',
                  style: TextStyle(fontSize: 12, color: kMainColor),
                ),
                SizedBox(width: 3),
                Text(
                  '(1053)',
                  style: TextStyle(fontSize: 9, color: kMainColor),
                ),
                rating(
                  ratenum: 1.5,
                  itemsize: 14,
                  itempadding: 0,
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}


/*customButton(
              icon: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border_outlined,
                color: isLiked ? Colors.red : Colors.black,
              ),
              color: Colors.transparent,
              ontap: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            ),*/