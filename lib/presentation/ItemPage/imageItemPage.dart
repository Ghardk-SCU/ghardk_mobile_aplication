import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class imageItemPage extends StatefulWidget {
  const imageItemPage({
    super.key,
  });

  @override
  State<imageItemPage> createState() => _imageItemPageState();
}

PageController _controller = PageController();
int currentPage = 0;
List<String> images = [
  'assets/images/Cloth_Bag/image1.jpg',
  'assets/images/Cloth_Bag/image2.jpg',
  'assets/images/Cloth_Bag/image3.jpg',
  'assets/images/Cloth_Bag/image4.jpg',
];

class _imageItemPageState extends State<imageItemPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: double.maxFinite,
            height: 250,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              controller: _controller,
              physics: BouncingScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
            )),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(images.length, (index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              margin: EdgeInsets.all(4.0),
              width: 12.0,
              height: 12.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentPage == index ? kMainColor : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
