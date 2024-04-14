import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class priceContainer extends StatelessWidget {
  const priceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        priceText(desc: 'Subtotal', price: 'EGP 62.34', isTotal: false),
        SizedBox(height: 5),
        priceText(desc: 'EGP 62.34', price: 'EGP 20.00', isTotal: false),
        SizedBox(height: 5),
        priceText(desc: 'Tax', price: 'EGP 5.02', isTotal: false),
        SizedBox(height: 5),
        SizedBox(
            width: double.infinity,
            child: Divider(
              thickness: 2,
              color: kMainColor,
            )),
        SizedBox(height: 5),
        priceText(desc: 'Total', price: 'EGP 87.36', isTotal: true)
      ],
    );
  }
}

class priceText extends StatelessWidget {
  const priceText({
    super.key,
    required this.desc,
    required this.price,
    required this.isTotal,
  });
  final String desc, price;
  final bool isTotal;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(desc,
            style: isTotal
                ? TextStyle(fontSize: 23, fontWeight: FontWeight.w600)
                : TextStyle(fontSize: 18)),
        Text(price,
            style: isTotal
                ? TextStyle(fontSize: 23, fontWeight: FontWeight.w600)
                : TextStyle(fontSize: 18)),
      ],
    );
  }
}
