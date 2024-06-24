import 'package:final_project/presentation/cartPage/cart/bottomContainerOnCart.dart';
import 'package:final_project/presentation/cartPage/cart/cartInfo.dart';
import 'package:final_project/presentation/cartPage/cart/topContainerOnCart.dart';
import 'package:flutter/material.dart';

class cartContainer extends StatelessWidget {
  const cartContainer({
    super.key,
    required this.sellerName,
    required this.productName,
    required this.productDesc,
    required this.price,
    required this.quantity,
    required this.productdate,
    required this.deleteButton,
  });
  final String sellerName, productName, productDesc;
  final double price;
  final int quantity;
  final DateTime productdate;
  final Function() deleteButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.maxFinite,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(
          children: [
            topContainerOnCart(
                img: 'assets/images/nasr.png',
                name: sellerName,
                deleteButton: deleteButton),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: cartInfo(
                title: productName,
                desc: productDesc,
                price: price,
                img: "assets/images/Rectangle36.png",
                count: quantity,
              ),
            ),
            Spacer(),
            bottomContainerOnCart(
              productdate: productdate,
            ),
          ],
        ),
      ),
    );
  }
}
