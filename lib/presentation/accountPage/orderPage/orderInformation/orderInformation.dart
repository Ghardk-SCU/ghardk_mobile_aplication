import 'package:final_project/presentation/accountPage/orderPage/orderInformation/detailsAndStatusContainer/DetailsAndStatusContainer.dart';
import 'package:flutter/material.dart';

class orderInformation extends StatelessWidget {
  const orderInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(side: BorderSide(width: 0.4)),
        centerTitle: true,
        title: const Text('Order Information',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        elevation: 0.0001,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Column(
          children: [
            DetailsAndStatusContainer(),
          ],
        ),
      ),
    );
  }
}
