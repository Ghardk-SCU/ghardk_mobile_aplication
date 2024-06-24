import 'package:final_project/model/Cubits/topRatedSeller_cubit/top_rated_seller_cubit.dart';
import 'package:final_project/presentation/topRatedPage/Top_sellers/topSellerItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class topSellerListView extends StatelessWidget {
  const topSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TopRatedSellerCubit, TopRatedSellerState>(
      listener: (context, state) {
        if (state is TopRatedSellerFaliure) {
          var snackBar = SnackBar(content: Text('${state.errMsg}'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        final cubit = BlocProvider.of<TopRatedSellerCubit>(context);
        return state is TopRatedSellerLoading
            ? Center(child: CircularProgressIndicator())
            : state is TopRatedSellerSuccess
                ? ListView.builder(
                    itemCount: cubit.AllTopSellers.length,
                    scrollDirection: Axis.vertical,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: topSellerItem(
                            sellerName:
                                "${cubit.AllTopSellers[index].firstName} ${cubit.AllTopSellers[index].lastName}",
                            sellerImage: cubit.AllTopSellers[index].imageUrl,
                            sellerDescraption:
                                cubit.AllTopSellers[index].description,
                            ratingof5: cubit.AllTopSellers[index].rating,
                            rating_count:
                                cubit.AllTopSellers[index].ratingCount,
                            idx: index,
                          ));
                    },
                  )
                : Container();
      },
    );
  }
}
