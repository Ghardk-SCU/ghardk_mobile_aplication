import 'package:final_project/presentation/cartPage/cart/bottomContainerOnCart.dart';
import 'package:final_project/presentation/cartPage/cart/cartInfo.dart';
import 'package:final_project/presentation/cartPage/cart/topContainerOnCart.dart';
import 'package:flutter/material.dart';

class cartContainer extends StatelessWidget {
  const cartContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int count = 0;
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
                img: 'assets/images/nasr.png', name: 'Mohammed Nasr'),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: cartInfo(
                title: 'Chicken strips',
                desc:
                    'Chicken strips with mushrooms sauce and melted cheddar cheese.',
                price: 9.35,
                img: "assets/images/Rectangle36.png",
                count: count,
              ),
            ),
            Spacer(),
            bottomContainerOnCart(),
          ],
        ),
      ),
    );
  }
}
