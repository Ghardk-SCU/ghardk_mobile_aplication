import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/category_cubit/category_cubit.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerOffers/buyerCard/buyerOfferCard.dart';
import 'package:final_project/presentation/homePage/homePageBody/category_list_view/buttonsIntabBar.dart';
import 'package:final_project/presentation/homePage/homePageBody/menu_list_view/listViewContainerItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuyercategoryListView extends StatelessWidget {
  BuyercategoryListView({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CategoryCubit>(context);
    List<Tab> names =
        cubit.categories.map((category) => Tab(text: category.name)).toList();
    return BlocConsumer<CategoryCubit, CategoryState>(
      listener: (context, state) {
        if (state is CategoryFailure) {
          var snackBar = SnackBar(content: Text('${state.errMsg}'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return state is CategorySucsses
            ? DefaultTabController(
                length: cubit.categories.length,
                child: Column(
                  children: [
                    buttonsIntabBar(
                      tabs: names,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView.builder(
                            itemCount: 20,
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => buyerOfferCard(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Container();
      },
    );
  }
}

/*  


    
  } */
