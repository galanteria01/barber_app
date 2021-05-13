import 'package:barber_app/pages/bookings.dart';
import 'package:barber_app/pages/notifications.dart';
import 'package:flutter/material.dart';

import 'main_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    MainPage(),
    Bookings(),
    Notifications(),
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
          height: 72.0,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _index,
            onTap: onTabTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: IconThemeData(
              size: 36,
              color: Colors.redAccent
            ),
            unselectedIconTheme: IconThemeData(
              size: 28,
            ),
            elevation: 24.0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: "More"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notification_important),
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

