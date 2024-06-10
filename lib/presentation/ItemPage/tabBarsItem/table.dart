import 'package:flutter/material.dart';

class table extends StatelessWidget {
  const table({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(0.35),
        1: FlexColumnWidth(0.65),
      },
      children: [
        customTabBarView('Material', 'Premium cotton'),
        customTabBarView('Design', 'Handwoven bohemian details'),
        customTabBarView('Size', 'Spacious for daily essentials'),
        customTabBarView('Straps', 'Sturdy and comfortable'),
        customTabBarView('Closure', 'Open-top for easy access'),
        customTabBarView('Versatility', 'Ideal for various occasions'),
        customTabBarView(
            'Sustainability', 'Handcrafted for eco-friendly style.'),
      ],
    );
  }
}

TableRow customTabBarView(String Title, String Desc) {
  return TableRow(
    children: [
      Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Text(Title,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
      ),
      Container(
        padding: EdgeInsets.all(8),
        child: Text(Desc,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
      ),
    ],
  );
}
