import 'dart:ui';
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

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

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
      body: PersistentTabView(
        context,
        controller: _controller,

        screens: const [
          HomePage(),
          TimetablePage(),
          HomePage(),
          HomePage(),
        ],

        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style3,
        // navBarStyle: NavBarStyle.style9,
        //  navBarStyle: NavBarStyle.style11,
        // navBarStyle: NavBarStyle.style15,
        decoration: navBarDecoration,
        // navBarHeight: 56.0 = Default
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
