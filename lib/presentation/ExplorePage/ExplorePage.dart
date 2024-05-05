import 'package:final_project/presentation/ExplorePage/FilterAndSortBy/sortBy/buttons.dart';
import 'package:final_project/presentation/ExplorePage/cardItem/ExploreCardItemGridView.dart';
import 'package:final_project/presentation/ExplorePage/searchBar.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            searchBar(),
            SortByAndFilter(),
            SizedBox(height: 10),
            Expanded(child: ExploreCardItemGridView()),
          ],
        ),
      ),
    );
  }
}
