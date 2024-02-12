import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:final_project/presentation/homePage/homePageBody/CustomButton.dart';
import 'package:final_project/presentation/homePage/homePageBody/menu_list_view/itemInfo.dart';
import 'package:flutter/material.dart';

class menuItem extends StatefulWidget {
  const menuItem({super.key});

  @override
  State<menuItem> createState() => _menuItemState();
}

class _menuItemState extends State<menuItem> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 180,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16),
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
                    color: Colors.white,
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
                  style: TextStyle(fontSize: 11, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '1.5',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    SizedBox(width: 3),
                    Text(
                      '(1053)',
                      style: TextStyle(fontSize: 9, color: Colors.white),
                    ),
                    rating(
                      ratenum: 1.5,
                      itemsize: 10,
                      itempadding: 0.2,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(child: ItemInfo()),
          ],
        ),
      ),
    );
  }
}
