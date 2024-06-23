import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Models/productModel.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  List<ProductModel> carts = [];
  int totalPrice = 0;
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
        carts.add(ProductModel.fromJson(item));
      }
      totalPrice = responseBody['data']['total'];
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

  Future<void> deleteFromCart() async {
    String? token = await CacheNetwork.getCacheData(key: 'token');
    emit(deleteFromCartLoading());
    final response = await http.delete(
      Uri.parse("${EndPoint.baseUrl}carts/1 "),
      headers: {'Authorization': 'Bearer $token', "lang": "en"},
    );

    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      emit(deleteFromCartSuccess());
    } else {
      emit(deleteFromCartFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }
}
