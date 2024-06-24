import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addNewAddressPage.dart';
import 'package:final_project/presentation/accountPage/editPage/widget/customButton.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AdressesEmpty extends StatelessWidget {
  const AdressesEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          customAccAppBar(text: 'Address'),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/emptyaddress.png',
                    fit: BoxFit.contain,
                    scale: 1.1,
                  ),
                  SizedBox(height: 10),
                  Text('Addresses list is empty',
                      style: TextStyle(
                          fontSize: 24,
                          color: kMainColor,
                          fontWeight: FontWeight.w600)),
                  SizedBox(height: 5),
                  Text('Add an address to use for upcoming orders',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(99, 33, 51, 153),
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  accountInfoButton(
                      ontap: () {
                        Get.to(addNewAddressPage());
                      },
                      child: Center(
                          child: Text('Add',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
