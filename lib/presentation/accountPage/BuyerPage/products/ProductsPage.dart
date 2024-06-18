import 'package:final_project/model/Cubits/user_cubit/user_cubit.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/AddNewProductScreen.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/AddProductButton.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/buyerCard/buyerOfferCard.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/Edit_Product/editProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isVendor = BlocProvider.of<UserCubit>(context).userr!.role == 'vendor'
        ? true
        : false;

    return Column(
      children: [
        Visibility(
          visible: isVendor,
          child: AddProductButton(ontap: () => Get.to(AddNewProductScreen())),
        ),
        ListView.builder(
          itemCount: 6,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return buyerOfferCard(
              title: 'Chicken Mushrooms Burger',
              desc:
                  'Chicken strips with mushrooms sauce and melted cheddar cheese.',
              price: 50.36,
              quantity: 4,
              img: 'assets/images/burger-removebg-preview.png',
              EditProductFun: () {
                Get.to(() => EditProductScreen());
              },
            );
          },
        ),
      ],
    );
  }
}
