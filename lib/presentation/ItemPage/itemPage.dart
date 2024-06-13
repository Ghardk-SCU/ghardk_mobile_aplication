import 'package:final_project/core/utilits/forYouText.dart';
import 'package:final_project/presentation/ItemPage/Buttons/incrementAndDecrementButton.dart';
import 'package:final_project/presentation/ItemPage/Buttons/purcheaseButtons.dart';
import 'package:final_project/presentation/ItemPage/customItemPageAppBar/customItemPageAppBar.dart';
import 'package:final_project/presentation/ItemPage/nameAndPriceAndRatingItem.dart';
import 'package:final_project/presentation/ItemPage/tabBarsItem/TabBarItem.dart';
import 'package:final_project/presentation/homePage/homePageBody/category_list_view/categoryListView.dart';
import 'package:flutter/material.dart';

class itemDetailsScreen extends StatefulWidget {
  const itemDetailsScreen({super.key});

  @override
  State<itemDetailsScreen> createState() => _itemDetailsScreenState();
}

int count = 0, _selectItem = 0;

class _itemDetailsScreenState extends State<itemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        CustomSliverAppBar(Title: 'Cloth Bag', SelectItem: _selectItem),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 30),
              nameAndPriceAndRatingItem(),
              const SizedBox(height: 30),
              const tabBarsItem(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  purcheaseButtons(),
                  Text('$count', style: TextStyle(fontSize: 20)),
                  Column(
                    children: [
                      incrementAndDecrementButton(
                        icon: Icons.add,
                        ontap: () {
                          setState(() {
                            count++;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      incrementAndDecrementButton(
                        icon: Icons.remove,
                        ontap: () {
                          setState(() {
                            if (count > 0) count--;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              const mainTitle(title: 'Similar Products'),
              const SizedBox(height: 10),
              categoryListView(),
            ]),
          ),
        ),
      ]),
    );
  }
}

List<String> images = [
  'assets/images/Cloth_Bag/image1.jpg',
  'assets/images/Cloth_Bag/image2.jpg',
  'assets/images/Cloth_Bag/image3.jpg',
  'assets/images/Cloth_Bag/image4.jpg',
];

//--------------------------------------------------------------------------------------------------------
