part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}
final class CategoryLoading extends CategoryState {}
final class CategorySucsses extends CategoryState {
   
}
final class CategoryFailure extends CategoryState {
    final String errMsg;
  CategoryFailure({required this.errMsg});
}
