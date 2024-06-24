part of 'top_rated_seller_cubit.dart';

@immutable
sealed class TopRatedSellerState {}

final class TopRatedSellerInitial extends TopRatedSellerState {}

final class TopRatedSellerLoading extends TopRatedSellerState {}

final class TopRatedSellerSuccess extends TopRatedSellerState {}

final class TopRatedSellerFaliure extends TopRatedSellerState {
  final String errMsg;

  TopRatedSellerFaliure({required this.errMsg});
}
