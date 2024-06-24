import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/Address_cubit/address_cubit.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addNewAddressPage.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/orderPage/orderInformation/shippingAddressContainer/ShippingAddressContainer.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addressEmpty.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: BlocBuilder<AddressCubit, AddressState>(
        builder: (context, state) {
          final allcountries =
              BlocProvider.of<AddressCubit>(context).allcountries;
          Map<int, String> countries = {
            for (var country in allcountries) country.id: country.name
          };
          final cubit = BlocProvider.of<AddressCubit>(context);
          if (state is getAllAddressLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is getAllAddressSuccess) {
            return cubit.allAddress.isEmpty
                ? AdressesEmpty()
                : Column(
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
                              country: cubit.allAddress[index].country,
                              city: cubit.allAddress[index].city,
                              description: cubit.allAddress[index].description,
                              StreetName: cubit.allAddress[index].streetName,
                              postalCode: cubit.allAddress[index].postalCode,
                              ontap: () {
                                context.read<AddressCubit>().deleteAddress(
                                    ID: cubit.allAddress[index].id);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  );
          }
          return Container();
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
    required this.country,
    required this.ontap,
  });
  final String city, description, postalCode, StreetName, country;
  final VoidCallback ontap;
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
              iconWithText(
                  text: '$country, $city', icon: Icons.location_on_outlined),
              SizedBox(height: 10),
              Text(StreetName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(description, style: TextStyle(fontSize: 14)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Postal Code : ${postalCode}',
                    style: TextStyle(fontSize: 12, color: steel),
                  ),
                  GestureDetector(
                    onTap: ontap,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: kMainColor),
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
