part of 'address_cubit.dart';

@immutable
sealed class AddressState {}

final class AddressInitial extends AddressState {}

final class getAllAddressInitial extends AddressState {}

final class getAllAddressLoading extends AddressState {}

final class getAllAddressSuccess extends AddressState {}

final class getAllAddressfaliure extends AddressState {
  final String errMsg;
  getAllAddressfaliure({required this.errMsg});
}

final class addAddressInitial extends AddressState {}

final class addAddressLoading extends AddressState {}

final class addAddressSuccess extends AddressState {}

final class addAddressfaliure extends AddressState {
  final String errMsg;
  addAddressfaliure({required this.errMsg});
}

final class deleteAddressInitial extends AddressState {}

final class deleteAddressLoading extends AddressState {}

final class deleteAddressSuccess extends AddressState {}

final class deleteAddressfaliure extends AddressState {
  final String errMsg;
  deleteAddressfaliure({required this.errMsg});
}

final class getAllCountriesInitial extends AddressState {}

final class getAllCountriesLoading extends AddressState {}

final class getAllCountriesSuccess extends AddressState {}

final class getAllCountriesfaliure extends AddressState {
  final String errMsg;
  getAllCountriesfaliure({required this.errMsg});
}
