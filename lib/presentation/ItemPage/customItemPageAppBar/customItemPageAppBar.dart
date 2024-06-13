import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/ItemPage/itemPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomSliverAppBar extends StatefulWidget {
  CustomSliverAppBar(
      {super.key, required this.Title, required this.SelectItem});
  final String Title;
  late int SelectItem;
  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Icon(Icons.share_outlined, color: Colors.white),
        ),
      ],
      leading: InkWell(
        onTap: () => Get.back(),
        child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
      ),
      elevation: 5,
      expandedHeight: 450,
      pinned: true,
      stretch: true,
      backgroundColor: kMainColor,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(right: 14, bottom: 16),
        centerTitle: true,
        title: Text(
          widget.Title,
          style: TextStyle(color: Colors.white),
        ), // Text
        background: Hero(
            tag: 1,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  widget.SelectItem = value;
                });
              },
              physics: BouncingScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
            )),
      ),
    );
  }
}
