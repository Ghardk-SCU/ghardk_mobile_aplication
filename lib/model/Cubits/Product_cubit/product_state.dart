part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class AddProductInitial extends ProductState {}

final class AddProductLoading extends ProductState {}

final class AddProductSuccsess extends ProductState {}

final class AddProductFaliure extends ProductState {
  final String errMsg;
  AddProductFaliure({required this.errMsg});
}

final class getAllProductInitial extends ProductState {}

final class getAllProductLoading extends ProductState {}

final class getAllProductSuccsess extends ProductState {}

final class getAllProductFaliure extends ProductState {
  final String errMsg;
  getAllProductFaliure({required this.errMsg});
}
