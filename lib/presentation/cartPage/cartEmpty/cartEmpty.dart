import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class cartEmpty extends StatelessWidget {
  const cartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/emptyCart.png'),
            SizedBox(height: 20),
            const Text(
              'Shopping cart is empty',
              style: TextStyle(
                  fontSize: 24, color: kMainColor, fontWeight: FontWeight.w500),
              maxLines: 1,
              softWrap: true,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Explore items now and fill your cart with handmade beauties.',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
