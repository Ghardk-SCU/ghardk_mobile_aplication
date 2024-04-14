import 'package:flutter/material.dart';

class orderStatus extends StatelessWidget {
  const orderStatus({
    super.key,
    required this.status,
    required this.color,
    required this.icon,
  });
  final String status;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          WidgetSpan(
              child: Icon(
            icon,
            color: color,
            size: 20,
          )),
          TextSpan(
              text: ' $status',
              style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 14, color: color)),
        ],
      ),
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16),
    );
  }
}
