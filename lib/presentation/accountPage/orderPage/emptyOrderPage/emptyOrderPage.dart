import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:final_project/presentation/accountPage/widget/customButton.dart';
import 'package:flutter/material.dart';

class emptyOrderPage extends StatelessWidget {
  const emptyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          customAccAppBar(text: 'Orders'),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Image.asset('assets/images/orderItems/emptyOrder.png'),
                SizedBox(height: 30),
                const Text(
                  'Order list is empty',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  "Start exploring a world of handmade wonders! discover unique treasures crafted just for you and order it now.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                customButton(text: 'Explore Items'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
