import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/loginPage.dart';
import 'package:final_project/presentation/accountPage/accountPage.dart';
import 'package:final_project/presentation/accountPage/favoritePage/emptyFavoritePage/emptyFavoritePage.dart';
import 'package:final_project/presentation/homePage/homepage.dart';
import 'package:final_project/presentation/topRatedPage/topRatedPage.dart';
import 'package:flutter/material.dart';

int idx = 0;

class mainPage extends StatefulWidget {
  const mainPage({super.key});
  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  PageController _pageController = PageController();

  void _pageChanged(int index) {
    setState(() {
      idx = index;
    });
  }

  void _itemChanged(int i) {
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 244, 244, 248),
            type: BottomNavigationBarType.fixed,
            elevation: 1,
            onTap: _itemChanged,
            currentIndex: idx,
            unselectedItemColor: const Color.fromARGB(255, 124, 124, 124),
            selectedItemColor: kMainColor,
            items: itemss,
          ),
        ),
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _pageChanged,
        ));
  }
}

List<BottomNavigationBarItem> itemss = const [
  BottomNavigationBarItem(
    icon: ImageIcon(
      size: 30,
      AssetImage("assets/images/Logo.png"),
    ),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.star_rate_outlined, size: 30),
    label: 'Top rated',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.explore_outlined, size: 30),
    label: 'Explore',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_outlined, size: 30),
    label: 'Cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.account_circle_outlined, size: 30),
    label: 'Account',
  )
];

const List<Widget> _screens = <Widget>[
  homePage(),
  //Center(child: Text('Home1', style: TextStyle(fontSize: 30))),
  topRatedPage(),
  loginPage(),
  //Center(child: Text('Home3', style: TextStyle(fontSize: 30))),
  Center(child: Text('Home4', style: TextStyle(fontSize: 30))),
  accountPage(),
];
