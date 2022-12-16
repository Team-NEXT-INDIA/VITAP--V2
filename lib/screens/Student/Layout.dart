import 'dart:ui';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/Student/Homepage/Homepage.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../customs/theme.dart';
import 'TimetablePage/Timatable.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  late PageController _pageController;
  int _selectedPage = 0;

  List<Widget> pages = [
    HomePage(),
    TimetablePage(),
    HomePage(),
    TimetablePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 0);

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // Border Radius for BottomNavigationBar
    const navBarDecoration = NavBarDecoration(
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(2, -5),
        //     spreadRadius: -7,
        //     blurRadius: 44,
        //     color: Color.fromRGBO(33, 33, 33, 0.48),
        //   )
        //
        // ],
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(18.0), topLeft: Radius.circular(18.0)),
    );
    return Scaffold(
      body: PageView(
        padEnds: false,
          allowImplicitScrolling: true,
        onPageChanged: (index) => setState(() { _selectedPage = index; }),
        controller: _pageController,
        children: [
          ...pages
        ],
      ),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedPage,
        showElevation: false,
        onItemSelected: (index) => _onItemTapped(index),
        items: [
          FlashyTabBarItem(
            activeColor: primaryColor,
            icon: const Icon(CupertinoIcons.home),
            title: Text("Home"),
          ),
          FlashyTabBarItem(
            activeColor: primaryColor,
            icon: const Icon(CupertinoIcons.time),
            title: Text("Timetable"),
          ),
          FlashyTabBarItem(
            activeColor: primaryColor,
            icon: const Icon(Icons.analytics),
            title: Text("Attendance"),
          ),
          FlashyTabBarItem(
            activeColor: primaryColor,
            icon: const Icon(CupertinoIcons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.time),
        title: ("Timetable"),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.analytics),
        title: ("Attendance"),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
