import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/model/Cubits/category_cubit/category_cubit.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/Widgets/descBuyer.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/Widgets/gridViewForBuyer.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/Widgets/photoWidget.dart';
import 'package:final_project/presentation/accountPage/BuyerPage/BuyerPageInfo/Widgets/ratingForBuyer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class buyerPageInfo extends StatelessWidget {
  const buyerPageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = BlocProvider.of<CategoryCubit>(context)
        .categories
        .map((category) => category.name)
        .toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(color: kScaffoldColor, boxShadow: [
        BoxShadow(
          color: Color(0xFF000000).withOpacity(0.4),
          offset: Offset(-2, 4),
          blurRadius: 2,
          spreadRadius: -1,
        ),
      ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PhotoWidget(
                img: 'assets/images/nasr.png',
                name: 'Mohamed Nasr',
              ),
              gridViewForBuyer(categories: categories),
            ],
          ),
          SizedBox(height: 30),
          const Row(
            children: [
              ratingForBuyer(),
              SizedBox(width: 5),
              verticalDivider(),
              SizedBox(width: 15),
              Expanded(
                child: descBuyer(text: loream),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class verticalDivider extends StatelessWidget {
  const verticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 60,
      child: VerticalDivider(
        color: kMainColor,
        width: 2,
      ),
    );
  }
}
