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
