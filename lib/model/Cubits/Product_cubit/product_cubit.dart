import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Models/productModel.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future addProduct(ProductModel product) async {
    emit(AddProductLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response =
        await http.post(Uri.parse('${EndPoint.baseUrl}${EndPoint.AddProduct}'),
            headers: {
              'Authorization': 'Bearer $token',
              'Content-Type': 'application/json',
            },
            body: jsonEncode({
              "name": product.name,
              "description": product.description,
              "category_id": product.categoryId,
              "price": product.price,
              "quantity": product.quantity
            }));

    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      emit(AddProductSuccsess());
    } else {
      emit(AddProductFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }
}
