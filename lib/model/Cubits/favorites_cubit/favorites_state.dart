part of 'favorites_cubit.dart';

sealed class FavoritesState {}

final class FavoritesInitial extends FavoritesState {}

final class getAllFavoritesInitial extends FavoritesState {}

final class getAllFavoritesLoading extends FavoritesState {}

final class getAllFavoritesSuccsess extends FavoritesState {}

final class getAllFavoritesFaliure extends FavoritesState {
  final String errMsg;
  getAllFavoritesFaliure({required this.errMsg});
}

final class addToFavoritesInitial extends FavoritesState {}

final class addToFavoritesLoading extends FavoritesState {}

final class addToFavoritesSuccsess extends FavoritesState {}

final class addToFavoritesFaliure extends FavoritesState {
  final String errMsg;
  addToFavoritesFaliure({required this.errMsg});
}
