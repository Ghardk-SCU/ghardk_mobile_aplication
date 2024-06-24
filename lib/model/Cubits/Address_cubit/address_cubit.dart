import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:final_project/core/api/end_ponits.dart';
import 'package:final_project/core/shared/network/local_network.dart';
import 'package:final_project/model/Models/addressModel.dart';
import 'package:final_project/presentation/accountPage/editPage/adresses/addresser.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  AddressCubit() : super(AddressInitial());

  Future addAddress({
    required int country_id,
    required String city,
    required String desc,
    required String street,
    required String postalCode,
  }) async {
    emit(addAddressLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response =
        await http.post(Uri.parse('${EndPoint.baseUrl}${EndPoint.addAddress}'),
            headers: {
              'Authorization': 'Bearer $token',
              'Content-Type': 'application/json',
            },
            body: jsonEncode({
              "country_id": country_id,
              "city": city,
              "description": desc,
              "street_name": street,
              "postal_code": postalCode
            }));

    var responseBody = jsonDecode(response.body);
    if (responseBody[ApiKey.status] == 'success') {
      emit(addAddressSuccess());
    } else {
      emit(addAddressfaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  Future<void> deleteAddress({required int ID}) async {
    emit(deleteAddressLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response = await http.delete(
        Uri.parse('${EndPoint.baseUrl}${EndPoint.addAddress}/$ID'),
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        });

    allAddress.removeWhere((item) => item.id == ID);
    await getAllAddress();
    emit(deleteAddressSuccess());
  }

  List<AddressModel> allAddress = [];
  Future getAllAddress() async {
    allAddress.clear();
    emit(getAllAddressLoading());
    String? token = await CacheNetwork.getCacheData(key: 'token');
    final response = await http.get(
      Uri.parse('${EndPoint.baseUrl}${EndPoint.getAllAddress}'),
      headers: {'Authorization': 'Bearer $token'},
    );

    var responseBody = jsonDecode(response.body);
    if (responseBody['${ApiKey.status}'] == 'success') {
      for (var address in responseBody['data']['addresses']) {
        allAddress.add(AddressModel.fromJson(address));
      }
      print("Address length  = ${allAddress.length}");

      emit(getAllAddressSuccess());
    } else {
      emit(getAllAddressfaliure(errMsg: responseBody[ApiKey.message]));
    }
  }

  List<countryModel> allcountries = [];
  Future getAllCountries() async {
    allcountries.clear();
    emit(getAllCountriesLoading());
    final response = await http.get(
      Uri.parse('${EndPoint.baseUrl}${EndPoint.getAllCountries}'),
      headers: {'Content-Type': 'application/json'},
    );

    var responseBody = jsonDecode(response.body);

    if (responseBody['${ApiKey.status}'] == 'success') {
      for (var country in responseBody['data']['docs']) {
        allcountries.add(countryModel.fromJson(country));
      }

      print("country length  = ${allcountries.length}");
      print(" Names only = ${allcountries.map((e) => e.name).toList()}");
      emit(getAllCountriesSuccess());
    } else {
      emit(getAllCountriesfaliure(errMsg: responseBody[ApiKey.message]));
    }
  }
}
