import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerOffers/buyerCard/image.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerOffers/buyerCard/offerContainerInfo.dart';
import 'package:flutter/material.dart';

class buyerOfferCard extends StatelessWidget {
  const buyerOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Card(
          elevation: 6,
          child: Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
              color: kScaffoldColor,
              border: Border.all(width: 0.6, color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(children: [
              const imageForOffer(
                  img: 'assets/images/burger-removebg-preview.png'),
              const SizedBox(width: 5),
              Expanded(
                  child: offerContainerInfo(
                maintitle: 'Chicken Mushrooms Burger',
                desctitle:
                    'Chicken strips with mushrooms sauce and melted cheddar cheese.',
                price: 50,
                ratePeople: 1025,
                rateRating: 3.5,
                ontap: () {},
              )),
            ]),
          )),
    );
  }
}
