import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class shippingAddressHeader extends StatelessWidget {
  const shippingAddressHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Shipping Address',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: kMainColor)),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
                color: kMainColor, borderRadius: BorderRadius.circular(8)),
            child: Text('Correct Order',
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
