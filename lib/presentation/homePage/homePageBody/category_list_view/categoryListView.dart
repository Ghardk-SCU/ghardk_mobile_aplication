import 'package:final_project/presentation/homePage/homePageBody/category_list_view/categoryListViewItem.dart';
import 'package:flutter/material.dart';

class categoryListView extends StatelessWidget {
  categoryListView({super.key});
  List items = ['All', 'Accessories', 'Sewing', 'Furniture', 'Figurines'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return categoryListViewItem(text: items[index]);
        },
      ),
    );
  }
}
