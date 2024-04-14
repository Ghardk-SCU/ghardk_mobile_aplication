import 'package:final_project/core/utilits/forYouText.dart';
import 'package:final_project/presentation/accountPage/accountPageBody/customListTile.dart';
import 'package:final_project/presentation/accountPage/cart/cart.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favorite/favoritePage.dart';
import 'package:final_project/presentation/accountPage/helpPage/helpPage.dart';
import 'package:flutter/material.dart';

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
            SizedBox(
              height: MediaQuery.sizeOf(context).height - 420,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                children: [
                  customListTile(
                      title: "Profile",
                      icon: Icons.person_outline,
                      ontap: () {}),
                  customListTile(
                      title: "Favorites",
                      icon: Icons.favorite,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const favoritePage()));
                      }),
                  customListTile(
                      title: "Orders", icon: Icons.assignment, ontap: () {}),
                  customListTile(
                      title: "Notification",
                      icon: Icons.notifications,
                      ontap: () {}),
                  customListTile(
                      title: "About us",
                      icon: Icons.error_outline,
                      ontap: () {}),
                  customListTile(
                      title: "Help",
                      icon: Icons.help_outline,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const helpPage()));
                      }),
                  customListTile(
                      title: "Settings", icon: Icons.settings, ontap: () {}),
                ],
              ),
            )
          ],
        ));
  }
}
