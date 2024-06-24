import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/model/Models/top_rated_seller_Model.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'top_rated_seller_state.dart';

class TopRatedSellerCubit extends Cubit<TopRatedSellerState> {
  TopRatedSellerCubit() : super(TopRatedSellerInitial());

  List<TopRatedSellerModel> AllTopSellers = [];
  Future<void> getAllTopRatedSellers() async {
    AllTopSellers.clear();
    emit(TopRatedSellerLoading());
    final response = await http.get(
        Uri.parse('${EndPoint.baseUrl}${EndPoint.top_rated_seller}'),
        headers: {
          "Content-Type": "application/json",
        });
    var responseBody = jsonDecode(response.body);
    if (responseBody['${ApiKey.status}'] == 'success') {
      for (var vendor in responseBody['data']['vendors']) {
        AllTopSellers.add(
          TopRatedSellerModel.fromJson(vendor),
        );
      }
      print(AllTopSellers.length);
      emit(TopRatedSellerSuccess());
    } else {
      emit(TopRatedSellerFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }
}
