import 'package:barber_app/cards/CategoryCard.dart';
import 'package:barber_app/cards/QueueCard.dart';
import 'package:barber_app/cards/ShopBarberCards.dart';
import 'package:flutter/material.dart';

import 'MainPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    MainPage(),
    MainPage(),
    MainPage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body:PageView(
          children: tabPages,
          onPageChanged: onPageChanged,
          controller: _pageController,
        ),
        bottomNavigationBar: Container(
          height: 90.0,
          child: BottomNavigationBar(
            currentIndex: _index,
            onTap: onTabTapped,
            elevation: 24.0,
            selectedItemColor: Colors.blueAccent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                  icon: Image(image: AssetImage("assets/Group 1.png")),
                  label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Image(image: AssetImage("assets/Icon awesome-book.png")),
                  label: "More"
              ),
              BottomNavigationBarItem(
                  icon: Image(image: AssetImage("assets/k.png")),
                  label: "Notifications"
              ),
            ],
          ),
        ),
      )
    );
  }

  void onPageChanged(int page) {
    setState(
        () {
          this._index = page;
        }
    );
  }

  void onTabTapped(int index){
    this._pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}

