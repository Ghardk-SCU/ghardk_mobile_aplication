import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/cartPage/cart/cartContainer.dart';
import 'package:flutter/material.dart';

class cartFull extends StatelessWidget {
  const cartFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(side: BorderSide(width: 0.4)),
        automaticallyImplyLeading: false,
        title: const Text('Cart',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        elevation: 0.0001,
      ),
      body: ListView(
        children: [
          ListView.builder(
            padding: EdgeInsets.all(16),
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: 6,
            itemBuilder: (context, index) {
              return cartContainer();
            },
          ),
          Container(
            padding: EdgeInsets.all(16),
            width: double.maxFinite,
            color: kMainColor,
            child: const Column(
              children: [
                cartPriceText(
                    desc: 'Shipping', price: 'EGP 20.00', isTotal: false),
                SizedBox(height: 5),
                cartPriceText(desc: 'Tax', price: 'EGP 5.02', isTotal: false),
                SizedBox(height: 5),
                SizedBox(
                    width: double.infinity,
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    )),
                SizedBox(height: 5),
                cartPriceText(desc: 'Total', price: 'EGP 87.36', isTotal: true)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class cartPriceText extends StatelessWidget {
  const cartPriceText({
    super.key,
    required this.desc,
    required this.price,
    required this.isTotal,
  });
  final String desc, price;
  final bool isTotal;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(desc,
            style: isTotal
                ? TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)
                : TextStyle(fontSize: 18, color: Colors.white)),
        Text(price,
            style: isTotal
                ? TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)
                : TextStyle(fontSize: 18, color: Colors.white)),
      ],
    );
  }
}
