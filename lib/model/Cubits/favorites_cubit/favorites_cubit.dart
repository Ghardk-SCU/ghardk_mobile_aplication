import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Models/productModel.dart';
import 'package:http/http.dart' as http;
part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesInitial());

  List<ProductModel> favorites = [];
  Set<String> favoritesID = {};

  Future<void> getFavorites() async {
    favorites.clear();
    emit(getAllFavoritesLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response = await http.get(
        Uri.parse("${EndPoint.baseUrl}${EndPoint.AllFavorites}"),
        headers: {
          'Authorization': 'Bearer $token',
        });

    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      for (var item in responseBody['data']['favouriteProducts']) {
        favorites.add(ProductModel.fromJson(item));
        favoritesID.add(item['id'].toString());
      }
      print("Favorites number is : ${favorites.length}");
      emit(getAllFavoritesSuccsess());
    } else {
      emit(getAllFavoritesFaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  void addOrRemoveFromFavorites({required String productID}) async {
    String? token = await CacheNetwork.getCacheData(key: 'token');
    emit(addOrRemoveFromFavoritesLoading());
    final response = await http.post(
        Uri.parse("${EndPoint.baseUrl}${EndPoint.addFavorite}"),
        headers: {'Authorization': 'Bearer $token'},
        body: jsonEncode({"product_id": productID}));
    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      if (favoritesID.contains(productID) == true) {
        favoritesID.remove(productID);
      } else {
        favoritesID.add(productID);
      }
      await getFavorites();
      emit(addOrRemoveFromFavoritesSuccsess());
    } else {
      emit(addOrRemoveFromFavoritesFaliure(
          errMsg: responseBody[ApiKey.message]));
    }
  }
}
