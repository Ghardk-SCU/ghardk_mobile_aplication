import 'package:final_project/core/utilits/StyleData.dart';
import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/ratingbar.dart';
import 'package:final_project/presentation/homePage/homePageBody/CustomButton.dart';
import 'package:flutter/material.dart';

class favItem extends StatefulWidget {
  const favItem(
      {super.key,
      required this.productName,
      required this.sellerName,
      required this.price,
      required this.removeFavorite});
  final String productName, sellerName;
  final double price;
  final VoidCallback removeFavorite;
  @override
  State<favItem> createState() => _favItemState();
}

class _favItemState extends State<favItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Card(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Column(
            children: [
              upperItem(
                ontap: widget.removeFavorite,
              ),
              lowerItem(
                  productName: widget.productName,
                  sellerName: widget.sellerName,
                  price: widget.price),
            ],
          ),
        ),
      ),
    );
  }
}

class upperItem extends StatelessWidget {
  const upperItem({super.key, required this.ontap});
  final VoidCallback ontap;
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
            icon: Icon(Icons.favorite, color: Colors.red),
            color: Colors.white,
            ontap: ontap,
          ),
        ),
      ],
    );
  }
}

class lowerItem extends StatelessWidget {
  const lowerItem(
      {super.key,
      required this.productName,
      required this.sellerName,
      required this.price});
  final String productName, sellerName;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //-----------------------------------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              productName,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: true,
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
                sellerName,
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
              itemcount: 5,
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
              "${price} EGP",
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
