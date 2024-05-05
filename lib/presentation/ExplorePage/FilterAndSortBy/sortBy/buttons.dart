import 'package:final_project/presentation/ExplorePage/FilterAndSortBy/Filter/FilterPage.dart';
import 'package:final_project/presentation/ExplorePage/FilterAndSortBy/sortBy/sortByPage.dart';
import 'package:flutter/material.dart';

class SortByAndFilter extends StatelessWidget {
  const SortByAndFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(
          child: sortByAndFilterButton(
        actionName: 'Sort by',
        icon: Icons.swap_vert_rounded,
        ontap: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              duration: Duration(hours: 1),
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              content: sortByPage()));
        },
      )),
      Flexible(
          child: sortByAndFilterButton(
        actionName: 'Filter',
        icon: Icons.filter_list_sharp,
        ontap: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              duration: Duration(hours: 1),
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              content: filterPage()));
        },
      )),
    ]);
  }
}

class sortByAndFilterButton extends StatelessWidget {
  const sortByAndFilterButton({
    super.key,
    required this.actionName,
    required this.icon,
    required this.ontap,
  });
  final String actionName;
  final IconData icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.05),
          color: Color(0xffEAEAEA),
        ),
        width: MediaQuery.of(context).size.width / 2,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(width: 5),
            Text(actionName,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
