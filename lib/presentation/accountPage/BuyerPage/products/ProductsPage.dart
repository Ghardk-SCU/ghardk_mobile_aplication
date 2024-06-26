import 'package:final_project/model/Cubits/Product_cubit/product_cubit.dart';
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
    final cubit = BlocProvider.of<ProductCubit>(context);
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        if (state is getAllProductFaliure) {
          var snackBar = SnackBar(content: Text('Something went wrong'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return state is getAllProductLoading
            ? Center(child: CircularProgressIndicator())
            : state is getAllProductSuccsess
                ? Column(
                    children: [
                      Visibility(
                        visible: isVendor,
                        child: AddProductButton(
                            ontap: () => Get.to(AddNewProductScreen())),
                      ),
                      ListView.builder(
                        itemCount: cubit.allProducts.length,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return buyerOfferCard(
                            title: cubit.allProducts[index].name,
                            desc: cubit.allProducts[index].description,
                            price: cubit.allProducts[index].price,
                            quantity: 3, //cubit.allProducts[index].quantity,
                            img: 'assets/images/burger-removebg-preview.png',
                            EditProductFun: () {
                              Get.to(() => EditProductScreen());
                            },
                          );
                        },
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Center(
                          child: Text('No Found Products',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))),
                      SizedBox(height: 30),
                      Visibility(
                        visible: isVendor,
                        child: AddProductButton(
                            ontap: () => Get.to(AddNewProductScreen())),
                      ),
                    ],
                  );
      },
    );
  }
}
