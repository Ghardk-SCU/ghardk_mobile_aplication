import 'package:final_project/presentation/accountPage/orderPage/fullOrderPage/detailsButton.dart';
import 'package:final_project/presentation/accountPage/orderPage/fullOrderPage/orderStatus.dart';
import 'package:final_project/presentation/accountPage/orderPage/orderInformation/orderInformation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class orderItem extends StatelessWidget {
  const orderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 1,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(width: 0.1),
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order id: #1283992',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  Text('12/10/2024',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.6))),
                ],
              ),
              const Divider(
                indent: 25,
                endIndent: 25,
              ),
              const SizedBox(height: 10),
              const Text('Total Cost: 87.36 EGP',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 10),
              const Text('Number of Items: 3',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  detailsButton(ontap: () {
                    Get.to(orderInformation());
                  }),
                  const orderStatus(
                    icon: Icons.check_circle_outline,
                    status: 'Completed',
                    color: Colors.green,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
