import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class bottomContainerOnCart extends StatelessWidget {
  const bottomContainerOnCart({
    super.key,
    required this.productdate,
  });
  final DateTime productdate;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
        color: Color(0xffc1c2c6),
      ),
      child: Center(
        child: Text(
          'Estimated delivery: ${DateFormat.yMMMEd().format(productdate)}',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
