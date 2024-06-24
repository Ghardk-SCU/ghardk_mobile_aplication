import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Models/cartProductModel.dart';
import 'package:final_project/model/Models/productModel.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  List<ProductOrderModel> carts = [];
  double totalPrice = 0.0;
  Future<void> getCarts() async {
    carts.clear();
    String? token = await CacheNetwork.getCacheData(key: 'token');
    emit(CartLoading());
    final response = await http.get(
        Uri.parse("${EndPoint.baseUrl}${EndPoint.Cart}"),
        headers: {'Authorization': 'Bearer $token', "lang": "en"});
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      for (var item in responseBody['data']['cartProducts']) {
        carts.add(ProductOrderModel.fromJson(item));
      }
      totalPrice = responseBody['data']['checkout_price'].toDouble();
      debugPrint("Carts length is : ${carts.length}");
      emit(CartSuccess());
    } else {
      emit(CartFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future<void> addToCart({required int quantity}) async {
    String? token = await CacheNetwork.getCacheData(key: 'token');
    emit(addToCartLoading());
    final response = await http.post(
        Uri.parse("${EndPoint.baseUrl}products/1/carts/item"),
        headers: {'Authorization': 'Bearer $token', "lang": "en"},
        body: jsonEncode({'quantity': quantity}));

    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      emit(addToCartSuccess());
    } else {
      emit(addToCartFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future<void> deleteFromCart({required int ID}) async {
    String? token = await CacheNetwork.getCacheData(key: 'token');
    await http.delete(
      Uri.parse("${EndPoint.baseUrl}carts/$ID"),
      headers: {'Authorization': 'Bearer $token', "lang": "en"},
    );
    carts.removeWhere((item) => item.id == ID);
    totalPrice = carts.fold(0,
        (sum, item) => sum + double.parse(item.productPrice) * item.quantity);
    if (totalPrice == 25.02) totalPrice = 0.0;
    await getCarts();
  }
}
