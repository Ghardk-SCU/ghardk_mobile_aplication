import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/orderPage/orderInformation/shippingAddressContainer/shippingAddressHeader.dart';
import 'package:flutter/material.dart';

class ShippingAddressContainer extends StatelessWidget {
  const ShippingAddressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        shippingAddressHeader(),
        SizedBox(height: 10),
        Card(
            elevation: 5,
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              width: double.infinity,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  iconWithText(
                      text: 'Cairo, Helwan', icon: Icons.location_on_outlined),
                  SizedBox(height: 10),
                  Text(
                      'Cairo, Helwan, street 19, Building 2, floor 5, Apartment 10',
                      style: TextStyle(fontSize: 14)),
                  SizedBox(height: 10),
                  Text(
                    '+2010123456968',
                    style: TextStyle(fontSize: 12, color: steel),
                  )
                ],
              ),
            )),
      ],
    );
  }
}

class iconWithText extends StatelessWidget {
  const iconWithText({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          WidgetSpan(
              child: Icon(
            icon,
            color: kMainColor,
            size: 20,
          )),
          TextSpan(
              text: text,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: kMainColor)),
        ],
      ),
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
    );
  }
}
