import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/cart_cubit/cart_cubit.dart';
import 'package:final_project/presentation/cartPage/cart/cartContainer.dart';
import 'package:final_project/presentation/cartPage/cart/cartTextPrice.dart';
import 'package:final_project/presentation/cartPage/cart/checkOutButton.dart';
import 'package:final_project/presentation/cartPage/cartEmpty/cartEmpty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

/* class cartFull extends StatefulWidget {
  const cartFull({super.key});

  @override
  State<cartFull> createState() => _cartFullState();
}

class _cartFullState extends State<cartFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(side: BorderSide(width: 0.4)),
        automaticallyImplyLeading: false,
        title: const Text('Cart',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        elevation: 0.0001,
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CartFaliure) {
            return Center(
              child: Container(
                child: Text('${state.errMsg}'),
              ),
            );
          } else if (state is CartSuccess) {
            final cubit = BlocProvider.of<CartCubit>(context);
            return cubit.carts.isEmpty
                ? cartEmpty()
                : ListView(
                    children: [
                      ListView.builder(
                        padding: EdgeInsets.all(16),
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        itemCount: cubit.carts.length,
                        itemBuilder: (context, index) {
                          return cartContainer(
                            sellerName:
                                '${cubit.carts[index].vendorFirstName} ${cubit.carts[index].vendorLastName}',
                            productName: cubit.carts[index].name,
                            productDesc: cubit.carts[index].description,
                            price:
                                double.parse(cubit.carts[index].productPrice),
                            quantity: cubit.carts[index].quantity,
                            productdate: cubit.carts[index].updatedAt,
                            deleteButton: () {
                              BlocProvider.of<CartCubit>(context)
                                  .deleteFromCart(ID: cubit.carts[index].id);
                              setState(() {});
                            },
                          );
                        },
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        width: double.maxFinite,
                        color: kMainColor,
                        child: Column(
                          children: [
                            cubit.carts.isEmpty
                                ? cartPriceText(
                                    desc: 'Shipping',
                                    price: 'EGP 00.00',
                                    isTotal: false)
                                : cartPriceText(
                                    desc: 'Shipping',
                                    price: 'EGP 20.00',
                                    isTotal: false),
                            const SizedBox(height: 5),
                            cubit.carts.isEmpty
                                ? cartPriceText(
                                    desc: 'Tax',
                                    price: 'EGP 00.00',
                                    isTotal: false)
                                : cartPriceText(
                                    desc: 'Tax',
                                    price: 'EGP 05.02',
                                    isTotal: false),
                            const SizedBox(height: 5),
                            const SizedBox(
                                width: double.infinity,
                                child: Divider(
                                  thickness: 2,
                                  color: Colors.white,
                                )),
                            const SizedBox(height: 5),
                            cartPriceText(
                                desc: 'Total',
                                price: 'EGP ${cubit.totalPrice + 25.02}',
                                isTotal: true),
                            const SizedBox(height: 20),
                            checkOutButton(
                              ontap: () {
                                _launchURL('https://www.instgram.com');
                              },
                            ),
                          ],
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
} */

class cartFull extends StatefulWidget {
  const cartFull({super.key});

  @override
  State<cartFull> createState() => _cartFullState();
}

class _cartFullState extends State<cartFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(side: BorderSide(width: 0.4)),
        automaticallyImplyLeading: false,
        title: const Text('Cart',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        elevation: 0.0001,
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CartFaliure) {
            return Center(
              child: Container(
                child: Text('${state.errMsg}'),
              ),
            );
          } else if (state is CartSuccess) {
            final cubit = BlocProvider.of<CartCubit>(context);
            return cubit.carts.isEmpty
                ? cartEmpty()
                : BlocConsumer<CartCubit, CartState>(
                    listener: (context, state) {
                      if (state is checkoutSuccess) {
                        var snackBar = SnackBar(content: Text('Successfully'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Duration(milliseconds: 500);
                        _launchURL('www.instgram.com');
                      } else if (state is checkoutFaliure) {
                        var snackBar =
                            SnackBar(content: Text('${state.errMsg}'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    builder: (context, state) {
                      return ListView(
                        children: [
                          ListView.builder(
                            padding: EdgeInsets.all(16),
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            keyboardDismissBehavior:
                                ScrollViewKeyboardDismissBehavior.onDrag,
                            itemCount: cubit.carts.length,
                            itemBuilder: (context, index) {
                              return cartContainer(
                                sellerName:
                                    '${cubit.carts[index].vendorFirstName} ${cubit.carts[index].vendorLastName}',
                                productName: cubit.carts[index].name,
                                productDesc: cubit.carts[index].description,
                                price: double.parse(
                                    cubit.carts[index].productPrice),
                                quantity: cubit.carts[index].quantity,
                                productdate: cubit.carts[index].updatedAt,
                                deleteButton: () {
                                  BlocProvider.of<CartCubit>(context)
                                      .deleteFromCart(
                                          ID: cubit.carts[index].id);
                                  setState(() {});
                                },
                              );
                            },
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            width: double.maxFinite,
                            color: kMainColor,
                            child: Column(
                              children: [
                                cubit.carts.isEmpty
                                    ? cartPriceText(
                                        desc: 'Shipping',
                                        price: 'EGP 00.00',
                                        isTotal: false)
                                    : cartPriceText(
                                        desc: 'Shipping',
                                        price: 'EGP 20.00',
                                        isTotal: false),
                                const SizedBox(height: 5),
                                cubit.carts.isEmpty
                                    ? cartPriceText(
                                        desc: 'Tax',
                                        price: 'EGP 00.00',
                                        isTotal: false)
                                    : cartPriceText(
                                        desc: 'Tax',
                                        price: 'EGP 05.02',
                                        isTotal: false),
                                const SizedBox(height: 5),
                                const SizedBox(
                                    width: double.infinity,
                                    child: Divider(
                                      thickness: 2,
                                      color: Colors.white,
                                    )),
                                const SizedBox(height: 5),
                                cartPriceText(
                                    desc: 'Total',
                                    price: 'EGP ${cubit.totalPrice + 25.02}',
                                    isTotal: true),
                                const SizedBox(height: 20),
                                checkOutButton(
                                  child: state is checkoutLoading
                                      ? Center(
                                          child: CircularProgressIndicator(
                                              color: kMainColor))
                                      : Text('Check Out',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: kMainColor,
                                              fontWeight: FontWeight.bold)),
                                  ontap: () {
                                    BlocProvider.of<CartCubit>(context)
                                        .checkout();
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  );
          }
          return Container();
        },
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  if (!await launchUrl(
    Uri.parse(url),
    mode: LaunchMode.inAppBrowserView,
    webViewConfiguration: WebViewConfiguration(
      enableJavaScript: true,
    ),
  )) {
    throw 'Could not launch $url';
  }
}
