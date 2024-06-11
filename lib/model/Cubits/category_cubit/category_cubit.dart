import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/model/Models/categoryModel.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  List<CategoryModel> categories = [];
  void getAllCategories() async {
    categories.clear();
    emit(CategoryLoading());
    final response =
        await http.get(Uri.parse('${EndPoint.baseUrl}categories'), headers: {
      "Content-Type": "application/json",
    });
    var responseBody = jsonDecode(response.body);
    if (responseBody['${ApiKey.status}'] == 'success') {
      for (var category in responseBody['data']['docs']) {
        categories.add(
          CategoryModel.fromJson(category),
        );
      }
      print("categories length  = ${categories.first}");
      print(categories.map((category) => category.name).toList());
      emit(CategorySucsses());
    } else {
      emit(CategoryFailure(errMsg: responseBody[ApiKey.message]));
    }
  }
}
