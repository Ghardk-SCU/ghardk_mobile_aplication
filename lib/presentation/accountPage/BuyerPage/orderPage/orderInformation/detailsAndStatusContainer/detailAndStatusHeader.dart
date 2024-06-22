import 'package:flutter/material.dart';

class detailAndStatusHeader extends StatelessWidget {
  const detailAndStatusHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text('Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(
              width: 120,
              child: Divider(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text('Status',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(
              width: 120,
              child: Divider(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
