import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/core/utilits/customCircleAvatar.dart';
import 'package:flutter/material.dart';

class customAccountAppBar extends StatelessWidget {
  const customAccountAppBar(
      {super.key,
      required this.name,
      required this.img,
      required this.location});
  final String name, img, location;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        color: kScaffoldColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54, blurRadius: 2, offset: Offset(0.0, 0.40))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          customCircleAvatar(image: img),
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              color: Colors.black,
              thickness: 2,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 12, color: Colors.black)),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 15,
                  ),
                  Text(location,
                      style: TextStyle(fontSize: 10, color: Colors.black)),
                ],
              ),
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit_outlined,
                size: 25,
              )),
        ],
      ),
    );
  }
}
