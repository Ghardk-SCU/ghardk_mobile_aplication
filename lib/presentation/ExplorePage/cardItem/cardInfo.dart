import 'package:final_project/core/utilits/StyleData.dart';
import 'package:final_project/presentation/ExplorePage/cardItem/offerContainerInfo.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/buyerPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class cardInfo extends StatefulWidget {
  const cardInfo({
    super.key,
  });

  @override
  State<cardInfo> createState() => _cardInfoState();
}

bool isLiked = false;

class _cardInfoState extends State<cardInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //-----------------------------------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Seller: ", style: StylesData.favSellerStyle),
            InkWell(
              onTap: () {
                Get.to(buyerPage());
              },
              child: Text(
                'Mohammed Nasr',
                style: StylesData.favSellerNameStyle,
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
              child: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border_sharp,
                color: isLiked ? Colors.red : Colors.grey,
                size: 20,
              ),
            ),
          ],
        ),

        SizedBox(height: 5),
        Center(
          child: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              'assets/images/burger-removebg-preview.png',
              fit: BoxFit.contain,
              width: 70,
              height: 80,
            ),
          ),
        ),

        SizedBox(height: 10),
        ExploreCardDetails(
          maintitle: 'Chicken Mushrooms Burger',
          desctitle:
              'Chicken strips with mushrooms sauce and melted cheddar cheese.',
          price: 50,
          ratePeople: 1025,
          rateRating: 3.5,
          ontap: () {},
        )
      ],
    );
  }
}
