import 'dart:convert';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Models/productModel.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  Future addProduct(
      {required String name,
      required String description,
      required int categoryId,
      required double price,
      required int quantity}) async {
    emit(AddProductLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response =
        await http.post(Uri.parse('${EndPoint.baseUrl}${EndPoint.AddProduct}'),
            headers: {
              'Authorization': 'Bearer $token',
              'Content-Type': 'application/json',
            },
            body: jsonEncode({
              "name": name,
              "description": description,
              "category_id": categoryId,
              "price": price,
              "quantity": quantity
            }));

    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      await CacheNetwork.insertToCache(
          key: 'newProductID',
          value: responseBody['data']['productItem']['id'].toString());
      emit(AddProductSuccsess());
    } else {
      emit(AddProductFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  List<ProductModel> allProducts = [];
  Future<void> getAllProducts() async {
    allProducts.clear();
    emit(getAllProductLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response =
        await http.get(Uri.parse('${EndPoint.baseUrl}products'), headers: {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    });
    var responseBody = jsonDecode(response.body);
    if (responseBody['${ApiKey.status}'] == 'success') {
      for (var category in responseBody['data']['docs']) {
        allProducts.add(
          ProductModel.fromJson(category),
        );
      }
      print('Products Length : ${allProducts.length}');
      emit(getAllProductSuccsess());
    } else {
      emit(getAllProductFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future<void> submitForm({required File file}) async {
    if (file == "") return;
    String? token = await CacheNetwork.getCacheData(key: 'token');
    String? ID = await CacheNetwork.getCacheData(key: 'newProductID');
    final response = await http.MultipartRequest(
        'POST', Uri.parse('${EndPoint.baseUrl}products/1/images'));
    response.headers['Authorization'] = 'Bearer $token';
    response.files.add(http.MultipartFile(
      'images',
      file.readAsBytes().asStream(),
      file.lengthSync(),
      filename: basename(file.path),
    ));
    try {
      var responsee = await response.send();
      if (responsee.statusCode == 200) {
        print('Image uploaded successfully');
      } else {
        print('Failed to upload image. Status code: ${responsee.statusCode}');
      }
    } catch (e) {
      print('Failed to send request: $e');
    }
  }
}
