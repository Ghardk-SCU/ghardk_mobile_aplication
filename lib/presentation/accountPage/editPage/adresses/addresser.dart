import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/Address_cubit/address_cubit.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addNewAddressPage.dart';
import 'package:final_project/presentation/accountPage/orderPage/orderInformation/shippingAddressContainer/ShippingAddressContainer.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class addressesPage extends StatelessWidget {
  const addressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () => Get.to(addNewAddressPage()),
        backgroundColor: kMainColor,
        isExtended: true,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: BlocConsumer<AddressCubit, AddressState>(
        listener: (context, state) {
          if (state is getAllAddressfaliure) {
            var snackBar = SnackBar(content: Text('${state.errMsg}'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          final cubit = BlocProvider.of<AddressCubit>(context);
          if (state is getAllAddressLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is getAllAddressSuccess) {
            return Column(
              children: [
                customAccAppBar(text: 'Addresses'),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(16),
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    physics: BouncingScrollPhysics(),
                    itemCount: cubit.allAddress.length,
                    itemBuilder: (context, index) {
                      return AddressCard(
                        city: "",
                        description: "",
                        StreetName: "",
                        postalCode: "",
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    required this.city,
    required this.description,
    required this.postalCode,
    required this.StreetName,
  });
  final String city, description, postalCode, StreetName;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              iconWithText(text: city, icon: Icons.location_on_outlined),
              SizedBox(height: 10),
              Text(StreetName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(description, style: TextStyle(fontSize: 14)),
              SizedBox(height: 10),
              Text(
                'Postal Code : ${postalCode}',
                style: TextStyle(fontSize: 12, color: steel),
              )
            ],
          ),
        ));
  }
}
