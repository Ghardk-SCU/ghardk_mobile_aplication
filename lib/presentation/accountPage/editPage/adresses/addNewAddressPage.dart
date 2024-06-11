import 'package:final_project/model/Cubits/Address_cubit/address_cubit.dart';
import 'package:final_project/model/Models/addressModel.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addressButton.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addresser.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/countiersDropDownButton.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/customTextField.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class addNewAddressPage extends StatefulWidget {
  const addNewAddressPage({super.key});

  @override
  State<addNewAddressPage> createState() => _addNewAddressPageState();
}

class _addNewAddressPageState extends State<addNewAddressPage> {
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  TextEditingController cityController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController descController = TextEditingController();
  int? _Selectedcountry;
  @override
  Widget build(BuildContext context) {
    final allcountries = BlocProvider.of<AddressCubit>(context).allcountries;
    Map<String, int> countries = {
      for (var country in allcountries) country.name: country.id
    };
    List<DropdownMenuItem<int>> dropdownItems =
        countries.entries.map<DropdownMenuItem<int>>((e) {
      return DropdownMenuItem<int>(
        value: e.value,
        child: Text(e.key.toString()),
      );
    }).toList();

    return Scaffold(
        body: BlocConsumer<AddressCubit, AddressState>(
      listener: (context, state) {
        if (state is addAddressSuccess) {
          var snackBar = SnackBar(
              content: Text('You have been added address successfully'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Duration(milliseconds: 500);
          context.read<AddressCubit>().getAllAddress();
          Get.off(() => addressesPage());
        } else if (state is addAddressfaliure) {
          var snackBar = SnackBar(content: Text('${state.errMsg}'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                customAccAppBar(text: 'Address'),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                              child: countriesDropDown(
                                  value: _Selectedcountry,
                                  items: dropdownItems,
                                  text: 'Countries',
                                  onChanged: (int? p0) {
                                    setState(() {
                                      _Selectedcountry = p0;
                                    });
                                  })),
                          SizedBox(width: 10),
                          Flexible(
                              child: textfield(
                                  icon: Icons.location_city_sharp,
                                  labelText: 'City',
                                  hintText: 'Ex: Helwan',
                                  controller: cityController)),
                        ],
                      ),
                      textfield(
                          icon: Icons.edit_road_rounded,
                          labelText: 'Street',
                          hintText: 'Ex: Gamal Abdelnasser Street',
                          controller: streetController),
                      textfield(
                          icon: Icons.description_outlined,
                          labelText: 'Description',
                          hintText:
                              '5 Gamal Abdelnasser Street 14 building floor 5',
                          controller: descController),
                      textfield(
                          icon: Icons.local_post_office,
                          labelText: 'Postal Code',
                          hintText: 'Ex: 41636',
                          controller: postalCodeController),
                      SizedBox(height: 30),
                      addaddressbutton(
                        child: state is addAddressLoading
                            ? Center(child: CircularProgressIndicator())
                            : Center(
                                child: Text('Add Address',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600))),
                        ontap: () {
                          BlocProvider.of<AddressCubit>(context).addAddress(
                            country_id: _Selectedcountry!,
                            city: cityController.text,
                            desc: descController.text,
                            street: streetController.text,
                            postalCode: postalCodeController.text,
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ));
      },
    ));
  }
}
