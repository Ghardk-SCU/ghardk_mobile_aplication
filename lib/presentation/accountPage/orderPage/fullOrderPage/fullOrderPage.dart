import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:final_project/presentation/accountPage/orderPage/fullOrderPage/tapBar.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';

class fullOrderPage extends StatelessWidget {
  const fullOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          customAccAppBar(text: 'Orders'),
          SizedBox(height: 10),
          DefaultTabController(
            length: 4,
            child: tabBar(),
          ),
        ],
      ),
    );
  }
}
