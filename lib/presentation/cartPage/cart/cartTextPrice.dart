import 'package:flutter/material.dart';

class cartPriceText extends StatelessWidget {
  const cartPriceText({
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
                ? TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)
                : TextStyle(fontSize: 18, color: Colors.white)),
        Text(price,
            style: isTotal
                ? TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)
                : TextStyle(fontSize: 18, color: Colors.white)),
      ],
    );
  }
}
