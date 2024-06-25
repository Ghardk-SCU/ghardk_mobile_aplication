import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/buyerCard/image.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/buyerCard/offerContainerInfo.dart';
import 'package:flutter/material.dart';

class buyerOfferCard extends StatelessWidget {
  const buyerOfferCard({
    super.key,
    required this.title,
    required this.desc,
    required this.img,
    required this.price,
    required this.quantity,
    required this.EditProductFun,
  });
  final String title, desc, img;
  final double price;
  final int quantity;
  final VoidCallback EditProductFun;
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
              imageForOffer(img: img),
              const SizedBox(width: 5),
              Expanded(
                  child: offerContainerInfo(
                maintitle: title,
                desctitle: desc,
                price: price,
                ratePeople: 1025,
                rateRating: 3.5,
                ontap: EditProductFun,
                quantity: quantity,
              )),
            ]),
          )),
    );
  }
}
