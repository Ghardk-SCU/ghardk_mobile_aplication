import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Models/productModel.dart';
import 'package:http/http.dart' as http;
part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesInitial());

  List<ProductModel> favorites = [];
  Set<int> favoritesID = {};

  Future<void> getFavorites() async {
    favorites.clear();
    //favoritesID.clear();
    emit(getAllFavoritesLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response = await http.get(
        Uri.parse("${EndPoint.baseUrl}${EndPoint.AllFavorites}"),
        headers: {
          'Authorization': 'Bearer $token',
        });

    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      for (var item in responseBody['data']) {
        favorites.add(ProductModel.fromJson(item));
        favoritesID.add(item['id']);
      }
      print("Favorites number is : ${favorites.length}");
      print('Favorites ID : $favoritesID');
      emit(getAllFavoritesSuccsess());
    } else {
      emit(getAllFavoritesFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  /* Future<void> addToFavorites({required int productID}) async {
    String? token = await CacheNetwork.getCacheData(key: 'token');
    emit(addToFavoritesLoading());
    final response = await http.post(
        Uri.parse("${EndPoint.baseUrl}${EndPoint.addFavorite}"),
        headers: {'Authorization': 'Bearer $token'},
        body: jsonEncode({"product_item_id": productID}));
    print('productID = ${productID}');
    //print(jsonDecode(favorites));
    var responseBody = jsonDecode(response.body);
    print(responseBody);
    if (responseBody[ApiKey.status] == 'success') {
      print('Favorite Product Add Sucessfully');
      print('Favorite Length Now : ${favorites.length}');
      await getFavorites();
      emit(addToFavoritesSuccsess());
    } else {
      emit(addToFavoritesFaliure(errMsg: responseBody[ApiKey.message]));
    }
  } */

  addToFavorites({required int ID}) async {
    String? token = await CacheNetwork.getCacheData(key: 'token');
    emit(addToFavoritesLoading());
    final response =
        await http.post(Uri.parse('${EndPoint.baseUrl}${EndPoint.addFavorite}'),
            headers: {'Authorization': 'Bearer $token'},
            body: jsonEncode({
              'product_item_id': ID,
            }));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      print('Favorite Product Add Sucessfully');
      print('Favorite Length Now : ${favorites.length}');
      await getFavorites();
      emit(addToFavoritesSuccsess());
    } else {
      emit(addToFavoritesFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future<void> deleteFromFavorites({required int productID}) async {
    String? token = await CacheNetwork.getCacheData(key: 'token');
    await http.delete(
      Uri.parse("${EndPoint.baseUrl}favourites/$productID"),
      headers: {'Authorization': 'Bearer $token'},
    );

    await getFavorites();
    print('Favorite Product Removed Sucessfully');
    print('Favorite Length Now : ${favorites.length}');
  }
}
