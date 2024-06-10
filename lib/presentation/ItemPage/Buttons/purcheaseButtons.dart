import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class purcheaseButtons extends StatelessWidget {
  const purcheaseButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            width: MediaQuery.of(context).size.width / 1.4,
            decoration: BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
                child: Text('Buy it now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600))),
          ),
        ),
        SizedBox(height: 10),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            width: MediaQuery.of(context).size.width / 1.4,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: kMainColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
                child: Text('Add to cart',
                    style: TextStyle(
                        color: kMainColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600))),
          ),
        ),
      ],
    );
  }
}
