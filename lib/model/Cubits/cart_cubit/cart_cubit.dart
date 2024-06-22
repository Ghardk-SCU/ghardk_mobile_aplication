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
}
