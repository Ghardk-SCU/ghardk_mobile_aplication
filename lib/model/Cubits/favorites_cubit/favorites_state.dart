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

final class addOrRemoveFromFavoritesInitial extends FavoritesState {}

final class addOrRemoveFromFavoritesLoading extends FavoritesState {}

final class addOrRemoveFromFavoritesSuccsess extends FavoritesState {}

final class addOrRemoveFromFavoritesFaliure extends FavoritesState {
  final String errMsg;
  addOrRemoveFromFavoritesFaliure({required this.errMsg});
}
