import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/cart/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: kMainColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text("309.46 EGP",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: Divider(color: Colors.white, thickness: 1),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text("Charge",
                    style: TextStyle(fontSize: 12, color: Colors.white)),
              ),
              SizedBox(
                width: 50,
                child: Divider(color: Colors.white, thickness: 1),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Spacer(flex: 3),
            customCartButton(
                text: 'Card', icon: Icons.credit_card_outlined, ontap: () {}),
            Spacer(flex: 1),
            customCartButton(
                text: 'Gift Card', icon: FontAwesomeIcons.gift, ontap: () {}),
            Spacer(flex: 1),
            customCartButton(
                text: 'PayPal', icon: FontAwesomeIcons.paypal, ontap: () {}),
            Spacer(flex: 3),
          ])
        ],
      ),
    );
  }
}
