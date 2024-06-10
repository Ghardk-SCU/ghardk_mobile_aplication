import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customItemPageAppBar extends StatelessWidget {
  const customItemPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
          color: kScaffoldColor,
          border: Border(
            top: BorderSide(color: Colors.grey, width: 0.2),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Get.back(),
            child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          ),
          Text('Cloth Bag',
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black)),
          InkWell(
            onTap: () {},
            child: Icon(Icons.share_outlined, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
