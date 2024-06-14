import 'package:final_project/model/Cubits/Address_cubit/address_cubit.dart';
import 'package:final_project/presentation/accountPage/accountPageBody/customListTile.dart';
import 'package:final_project/presentation/accountPage/editPage/accountInfo.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addressEmpty.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addresser.dart';
import 'package:final_project/presentation/accountPage/editPage/changePassword.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class editPage extends StatelessWidget {
  const editPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool foundCountry =
        BlocProvider.of<AddressCubit>(context).allAddress.length != 0
            ? true
            : false;

    return Scaffold(
      body: Column(
        children: [
          const customAccAppBar(text: 'Edit'),
          SizedBox(height: 30),
          customListTile(
              title: 'Account Info',
              ontap: () {
                Get.to(const accountInfo());
              },
              icon: Icons.person),
          customListTile(
              title: 'Addresses',
              ontap: () {
                foundCountry
                    ? Get.to(() => const addressesPage())
                    : Get.to(() => const AdressesEmpty());
              },
              icon: Icons.share_location),
          customListTile(
              title: 'Change Password',
              ontap: () {
                Get.to(const changePassword());
              },
              icon: Icons.password),
        ],
      ),
    );
  }
}
