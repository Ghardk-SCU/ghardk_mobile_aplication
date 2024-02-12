import 'package:final_project/core/utilits/StyleData.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:final_project/presentation/homePage/homePageBody/CustomButton.dart';
import 'package:flutter/material.dart';

class favItem extends StatefulWidget {
  const favItem({super.key});

  @override
  State<favItem> createState() => _favItemState();
}

class _favItemState extends State<favItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          children: [
            upperItem(),
            lowerItem(),
          ],
        ),
      ),
    );
  }
}

class upperItem extends StatefulWidget {
  const upperItem({super.key});

  @override
  State<upperItem> createState() => _upperItemState();
}

class _upperItemState extends State<upperItem> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            image: DecorationImage(
              image: AssetImage('assets/images/FavItem.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 5,
          child: customButton(
            width: 35,
            height: 35,
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
        ),
      ],
    );
  }
}

class lowerItem extends StatelessWidget {
  const lowerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //-----------------------------------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 120,
              child: Text(
                'Mini Camera Figure',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: true,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(Icons.more_horiz),
            ),
          ],
        ),
        //-----------------------------------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Seller: ", style: StylesData.favSellerStyle),
            InkWell(
              onTap: () {},
              child: Text(
                'Mohammed Nasr',
                style: StylesData.favSellerNameStyle,
              ),
            )
          ],
        ),
        //---------------------------------------------------------------
        SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '2.5',
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 3),
            Text(
              '(1053)',
              style: TextStyle(
                  fontSize: 7,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            rating(
              ratenum: 2.5,
              itemsize: 14,
              itempadding: 0,
            ),
          ],
        ),

        //-----------------------------------
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "14 EGP",
              style: TextStyle(
                  fontSize: 14, color: kMainColor, fontWeight: FontWeight.w500),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kMainColor,
                ),
                child: Text("Add To Cart",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
