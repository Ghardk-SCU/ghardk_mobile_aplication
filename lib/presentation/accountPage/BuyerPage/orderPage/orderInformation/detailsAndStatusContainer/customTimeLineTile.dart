import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class customTimeLineTile extends StatelessWidget {
  customTimeLineTile({
    required this.isFirst,
    required this.isDone,
    required this.isLast,
    required this.text,
    super.key,
  });
  bool isFirst;
  bool isDone;
  bool isLast;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: isDone ? kMainColor : Colors.grey),
        indicatorStyle: isDone
            ? IndicatorStyle(
                color: kMainColor,
                width: 16,
                iconStyle: IconStyle(
                    iconData: Icons.done, color: Colors.white, fontSize: 12))
            : IndicatorStyle(color: Colors.grey, width: 16),
        endChild: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(text,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: kMainColor)),
        ),
      ),
    );
  }
}
