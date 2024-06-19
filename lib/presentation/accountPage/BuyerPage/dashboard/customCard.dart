import 'package:flutter/material.dart';

class customDashboardCard extends StatelessWidget {
  const customDashboardCard(
      {super.key,
      required this.colorIcon,
      required this.icon,
      required this.title,
      required this.footer,
      required this.number,
      required this.isPrice});
  final Color colorIcon;
  final IconData icon;
  final String title;
  final String footer;
  final double number;
  final bool isPrice;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: colorIcon,
                //backgroundColor: Color(0xffD398E7),
                radius: 30,
                child: Icon(
                  //Icons.signal_cellular_alt_rounded,
                  icon,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
              SizedBox(height: 10),
              Text(
                  isPrice
                      ? '\$${number.toStringAsFixed(2)}'
                      : '${number.toInt()}',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(footer, style: TextStyle(fontSize: 10, color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
