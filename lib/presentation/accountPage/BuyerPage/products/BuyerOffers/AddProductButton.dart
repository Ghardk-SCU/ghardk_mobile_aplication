import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          width: 200,
          padding: EdgeInsets.all(16),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kMainColor,
          ),
          child: Row(
            children: <Widget>[
              Icon(Icons.add, color: Colors.white, size: 20),
              SizedBox(width: 10),
              Text('Add New Product',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ],
          )),
    );
  }
}
