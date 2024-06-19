import 'package:final_project/core/utilits/forYouText.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/buyerPage.dart';
import 'package:final_project/presentation/accountPage/accountPageBody/SettingPage/settingPage.dart';
import 'package:final_project/presentation/accountPage/accountPageBody/customListTile.dart';
import 'package:final_project/presentation/accountPage/cart/cart.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favorite/favoritePage.dart';
import 'package:final_project/presentation/accountPage/helpPage/helpPage.dart';
import 'package:final_project/presentation/accountPage/orderPage/emptyOrderPage/emptyOrderPage.dart';
import 'package:final_project/presentation/accountPage/orderPage/fullOrderPage/fullOrderPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class accountPageBody extends StatelessWidget {
  const accountPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            mainTitle(title: 'Account Balance'),
            SizedBox(height: 5),
            cart(),
            const SizedBox(
                width: double.maxFinite,
                child: Divider(
                  thickness: 1,
                )),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                children: [
                  customListTile(
                      title: "Profile",
                      icon: Icons.person_outline,
                      ontap: () {
                        Get.to(buyerPage());
                      }),
                  customListTile(
                      title: "Favorites",
                      icon: Icons.favorite,
                      ontap: () {
                        Get.to(() => const favoritePage());
                      }),
                  customListTile(
                      title: "Orders",
                      icon: Icons.assignment,
                      ontap: () {
                        Get.to(() => const fullOrderPage());
                      }),
                  customListTile(
                      title: "Notification",
                      icon: Icons.notifications,
                      ontap: () {}),
                  customListTile(
                      title: "Help",
                      icon: Icons.help_outline,
                      ontap: () {
                        Get.to(() => const helpPage());
                      }),
                  customListTile(
                      title: "Settings",
                      icon: Icons.settings,
                      ontap: () => Get.to(() => const settingPage())),
                ],
              ),
            )
          ],
        ));
  }
}
