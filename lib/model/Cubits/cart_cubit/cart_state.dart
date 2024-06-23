part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartLoading extends CartState {}

final class CartSuccess extends CartState {}

final class CartFaliure extends CartState {
  final String errMsg;

  CartFaliure({required this.errMsg});
}

final class addToCartInitial extends CartState {}

final class addToCartLoading extends CartState {}

final class addToCartSuccess extends CartState {}

final class addToCartFaliure extends CartState {
  final String errMsg;

  addToCartFaliure({required this.errMsg});
}

final class deleteFromCartInitial extends CartState {}

final class deleteFromCartLoading extends CartState {}

final class deleteFromCartSuccess extends CartState {}

final class deleteFromCartFaliure extends CartState {
  final String errMsg;

  deleteFromCartFaliure({required this.errMsg});
}
