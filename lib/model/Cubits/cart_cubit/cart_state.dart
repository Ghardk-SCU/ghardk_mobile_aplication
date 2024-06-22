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
