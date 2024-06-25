import 'package:final_project/model/Cubits/Product_cubit/product_cubit.dart';
import 'package:final_project/model/Cubits/category_cubit/category_cubit.dart';
import 'package:final_project/model/Models/productModel.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/CategoryDropDowmItem.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/addNewProductButton.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/products/BuyerOffers/textfieldProduct.dart';
import 'package:final_project/presentation/accountPage/widget/customAccAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({super.key});

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  TextEditingController nameProductController = TextEditingController();
  TextEditingController descProductController = TextEditingController();
  TextEditingController priceProductController = TextEditingController();
  TextEditingController quantityProductController = TextEditingController();
  int? _Selectedcategory;
  @override
  Widget build(BuildContext context) {
    Map<String, int> categories = {
      for (var category in BlocProvider.of<CategoryCubit>(context).categories)
        category.name: category.id
    };
    List<DropdownMenuItem<int>> CategoryDropDowmItem =
        categories.entries.map<DropdownMenuItem<int>>((e) {
      return DropdownMenuItem<int>(
        value: e.value,
        child: Text(e.key.toString()),
      );
    }).toList();
    return Scaffold(
      body: BlocConsumer<ProductCubit, ProductState>(
        listener: (context, state) {
          if (state is AddProductSuccsess) {
            var snackBar = SnackBar(
                content: Text('You have been added address successfully'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            Duration(milliseconds: 500);
          } else if (state is AddProductFaliure) {
            var snackBar = SnackBar(content: Text('${state.errMsg}'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                customAccAppBar(text: 'Products'),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(children: [
                    textfieldProduct(
                        labelText: 'Name',
                        hintText: 'Chicken Mushroom',
                        controller: nameProductController,
                        icon: Icons.inventory_2),
                    textfieldProduct(
                        labelText: 'Description',
                        hintText: 'Chicken Mushroom with cheese and tomato',
                        controller: descProductController,
                        icon: Icons.description_outlined),
                    categoriesDropDowmItem(
                      text: 'Category',
                      value: _Selectedcategory,
                      onChanged: (int? p0) {
                        setState(() {
                          _Selectedcategory = p0;
                        });
                      },
                      items: CategoryDropDowmItem,
                    ),
                    Row(
                      children: [
                        Flexible(
                            child: textfieldProduct(
                                keyboardType: TextInputType.number,
                                labelText: 'Price',
                                hintText: 'EGP 65.23',
                                controller: priceProductController,
                                icon: Icons.attach_money_outlined)),
                        SizedBox(width: 5),
                        Flexible(
                            child: textfieldProduct(
                                keyboardType: TextInputType.number,
                                labelText: 'Quantity',
                                hintText: '10',
                                controller: quantityProductController,
                                icon: Icons.format_list_numbered_outlined)),
                      ],
                    ),
                    SizedBox(height: 30),
                    ConfimAddNewProductButton(
                      child: state is AddProductLoading
                          ? Center(
                              child: CircularProgressIndicator(
                                  color: Colors.white))
                          : Text('Add Product',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                      ontap: () {
                        BlocProvider.of<ProductCubit>(context).addProduct(
                            name: nameProductController.text,
                            description: descProductController.text,
                            categoryId: _Selectedcategory!,
                            price: double.parse(priceProductController.text),
                            quantity:
                                int.parse(quantityProductController.text));
                      },
                    ),
                  ]),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
