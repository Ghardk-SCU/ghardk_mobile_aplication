import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:final_project/model/Cubits/favorites_cubit/favorites_cubit.dart';
import 'package:final_project/presentation/accountPage/favoritePage/favorite/favoriteItem/favItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class gridViewFavList extends StatelessWidget {
  const gridViewFavList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: DynamicHeightGridView(
          physics: BouncingScrollPhysics(),
          itemCount: 120,
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          builder: (ctx, index) {
            return favItem(
                removeFavorite: () {},
                productName: 'Mini Camera Figure',
                sellerName: 'Mahmoud Elsayed',
                price: 15.26);
          }),
    );
  }
}

class gridViewFavList1 extends StatelessWidget {
  const gridViewFavList1({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<FavoritesCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: BlocConsumer<FavoritesCubit, FavoritesState>(
        listener: (context, state) {
          if (state is getAllFavoritesFaliure) {
            var snackBar = SnackBar(content: Text('${state.errMsg}'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          return state is getAllFavoritesLoading
              ? Center(child: CircularProgressIndicator())
              : state is getAllFavoritesSuccsess
                  ? DynamicHeightGridView(
                      physics: BouncingScrollPhysics(),
                      itemCount: cubit.favorites.length,
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      builder: (ctx, index) {
                        return favItem(
                            removeFavorite: () {
                              BlocProvider.of<FavoritesCubit>(context)
                                  .deleteFromFavorites(
                                      productID: cubit.favorites[index].id);
                            },
                            productName: cubit.favorites[index].name,
                            sellerName: 'Mahmoud Elsayed',
                            price: cubit.favorites[index].price);
                      })
                  : Container();
        },
      ),
    );
  }
}


/*          return DynamicHeightGridView(
              physics: BouncingScrollPhysics(),
              itemCount: 120,
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              builder: (ctx, index) {
                return favItem(
                    productName: 'Mini Camera Figure',
                    sellerName: 'Mahmoud Elsayed',
                    price: 15.65);
              }); */