import 'package:flutter/material.dart';

class descBuyer extends StatelessWidget {
  const descBuyer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text,
      textAlign: TextAlign.start,
      style: TextStyle(),
    );
  }
}
