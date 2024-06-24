import 'package:final_project/presentation/topRatedPage/Top_sellers/descraptionContainer.dart';
import 'package:final_project/presentation/topRatedPage/Top_sellers/itemInfo.dart';
import 'package:final_project/presentation/topRatedPage/Top_sellers/medal.dart';
import 'package:flutter/material.dart';

class topSellerItem extends StatelessWidget {
  topSellerItem(
      {super.key,
      required this.idx,
      required this.sellerName,
      required this.sellerImage,
      required this.sellerDescraption,
      required this.rating_count,
      required this.ratingof5});
  final int idx;
  final String sellerName, sellerImage, sellerDescraption;
  final int rating_count;
  final double ratingof5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
          width: double.maxFinite,
          height: 100,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 206, 207, 216),
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              itemInfo(
                sellerName: sellerName,
                sellerImage: sellerImage,
                ratingof5: ratingof5,
                rating_count: rating_count,
              ),
              descContainer(
                descraption: sellerDescraption,
              ),
              if (idx == 0)
                medal(img: 'assets/images/medal/Rank1.png')
              else if (idx == 1)
                medal(img: 'assets/images/medal/Rank2.png')
              else if (idx == 2)
                medal(img: 'assets/images/medal/Rank3.png')
            ],
          )),
    );
  }
}
