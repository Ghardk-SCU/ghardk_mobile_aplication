import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class incrementAndDecrementButtons extends StatefulWidget {
  incrementAndDecrementButtons({
    super.key,
    this.count = 0,
  });
  late int count;
  @override
  State<incrementAndDecrementButtons> createState() =>
      _incrementAndDecrementButtonsState();
}

class _incrementAndDecrementButtonsState
    extends State<incrementAndDecrementButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            color: kMainColor,
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                widget.count++;
                print(widget.count);
              });
            },
            child: Icon(Icons.add, size: 18, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Text('${widget.count}'),
        ),
        Container(
          padding: EdgeInsets.all(3),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            color: kMainColor,
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                if (widget.count > 0) widget.count--;
                print(widget.count);
              });
            },
            child: Icon(
              Icons.remove,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
