import 'package:final_project/model/Cubits/category_cubit/category_cubit.dart';
import 'package:final_project/presentation/homePage/homePageBody/category_list_view/buttonsIntabBar.dart';
import 'package:final_project/presentation/homePage/homePageBody/menu_list_view/listViewContainerItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class categoryListView extends StatelessWidget {
  categoryListView({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<CategoryCubit>(context);
    return BlocConsumer<CategoryCubit, CategoryState>(
      listener: (context, state) {
        if (state is CategoryFailure) {
          var snackBar = SnackBar(content: Text('${state.errMsg}'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        if (state is CategoryLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CategorySucsses) {
          List<Tab> names = cubit.categories
              .map((category) => Tab(text: category.name))
              .toList();
          return DefaultTabController(
            length: cubit.categories.length,
            child: Column(
              children: [
                buttonsIntabBar(tabs: names),
                SizedBox(
                  height: 190,
                  child: TabBarView(
                    children: [
                      menuListView(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}


/*  


    
  } */