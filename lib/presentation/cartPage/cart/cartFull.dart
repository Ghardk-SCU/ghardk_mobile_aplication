import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/cartPage/cart/cartContainer.dart';
import 'package:final_project/presentation/cartPage/cart/cartTextPrice.dart';
import 'package:final_project/presentation/cartPage/cart/checkOutButton.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            child: Column(
              children: [
                const cartPriceText(
                    desc: 'Shipping', price: 'EGP 20.00', isTotal: false),
                const SizedBox(height: 5),
                const cartPriceText(
                    desc: 'Tax', price: 'EGP 5.02', isTotal: false),
                const SizedBox(height: 5),
                const SizedBox(
                    width: double.infinity,
                    child: Divider(
                      thickness: 2,
                      color: Colors.white,
                    )),
                const SizedBox(height: 5),
                const cartPriceText(
                    desc: 'Total', price: 'EGP 87.36', isTotal: true),
                const SizedBox(height: 20),
                checkOutButton(
                  ontap: () {
                    _launchURL('https://www.instgram.com');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.inAppBrowserView,
    webViewConfiguration: WebViewConfiguration(
      enableJavaScript: true,
    ),
  )) {
    throw 'Could not launch $url';
  }
}
