import 'package:final_project/presentation/accountPage/BuyerPage/dashboard/customCard.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/dashboard/customGauge.dart';
import 'package:flutter/material.dart';

class dashboardPage extends StatelessWidget {
  const dashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: customDashboardCard(
                isPrice: true,
                colorIcon: Color(0xffD398E7),
                icon: Icons.signal_cellular_alt_rounded,
                title: 'Total revenue',
                number: 65.23,
                footer: '12% increase from last month',
              ),
            ),
            Flexible(
              child: customDashboardCard(
                isPrice: false,
                colorIcon: Color(0xffE89271),
                icon: Icons.inventory_2,
                title: 'Total sold items',
                number: 95,
                footer: '10% decrease from last month',
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          'Overall Progress',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Card(
          elevation: 1,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: CustomGauge(
              shipped: 26,
              processing: 35,
              canceled: 35,
            ),
          ),
        ),
      ],
    );
  }
}
