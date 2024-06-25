import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:final_project/model/Cubits/Product_cubit/product_cubit.dart';
import 'package:final_project/model/Cubits/favorites_cubit/favorites_cubit.dart';
import 'package:final_project/presentation/ExplorePage/cardItem/ExploreCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreCardItemGridView extends StatelessWidget {
  const ExploreCardItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3),
      child: DynamicHeightGridView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 4,
          builder: (ctx, index) {
            return ExploreCard(
              FavoriteButtonFun: () {},
              productName: 'Chicken Mashrooum',
              ProductDescription:
                  'Chicken Mashrooum Chicken Mashrooum Chicken Mashrooum',
              sellerName: 'Mahmoud Elsayed',
              price: 30,
            );
          }),
    );
  }
} 

/* class ExploreCardItemGridView extends StatelessWidget {
  const ExploreCardItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        if (state is getAllProductFaliure) {
          var snackBar = SnackBar(content: Text('${state.errMsg}'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<ProductCubit>(context);
        return state is getAllProductLoading
            ? Center(child: CircularProgressIndicator())
            : state is getAllProductSuccsess
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: DynamicHeightGridView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: cubit.allProducts.length,
                        crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 4,
                        builder: (ctx, index) {
                          return ExploreCard(
                            price: cubit.allProducts[index].price,
                            sellerName: cubit.allProducts[index].name,
                            productName: cubit.allProducts[index].name,
                            ProductDescription:
                                cubit.allProducts[index].description,
                            FavoriteButtonFun: () {
                              BlocProvider.of<FavoritesCubit>(context)
                                  .addOrRemoveFromFavorites(
                                      productID: cubit.allProducts[index].id);
                            },
                          );
                        }),
                  )
                : Container();
      },
    );
  }
} */
