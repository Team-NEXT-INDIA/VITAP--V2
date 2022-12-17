import 'dart:ui';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
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
    const HomePage(),
    const TimetablePage(),
    const HomePage(),
    const TimetablePage(),
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
      bottomNavigationBar:
      // FlashyTabBar(
      //   backgroundColor: Colors.white,
      //   selectedIndex: _selectedPage,
      //   showElevation: true,
      //   onItemSelected: (index) => _onItemTapped(index),
      //   items: [
      //     FlashyTabBarItem(
      //       activeColor: primaryColor,
      //       icon: const Icon(CupertinoIcons.home),
      //       title: Text("Home", style: TextStyle(fontWeight: FontWeight.w400),),
      //     ),
      //     FlashyTabBarItem(
      //       activeColor: primaryColor,
      //       icon: const Icon(CupertinoIcons.time),
      //       title: Text("Timetable",style: TextStyle(fontWeight: FontWeight.w400)),
      //     ),
      //     FlashyTabBarItem(
      //       activeColor: primaryColor,
      //       icon: const Icon(Icons.analytics),
      //       title: Text("Attendance",style: TextStyle(fontWeight: FontWeight.w400)),
      //     ),
      //     FlashyTabBarItem(
      //       activeColor: primaryColor,
      //       icon: const Icon(CupertinoIcons.person),
      //       title: Text("Profile",style: TextStyle(fontWeight: FontWeight.w400)),
      //     ),
      //   ],
      // ),
      Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: GNav(
            selectedIndex: _selectedPage,
            onTabChange: (index) => _onItemTapped(index),
            color: Colors.grey[500]!,
            activeColor: const Color(0xff386BF6),
            rippleColor: const Color(0xffD4D9E7),
            hoverColor: const Color(0xffD4D9E7),
            iconSize: 22,
            textStyle: const TextStyle(fontSize: 14,color: Color(0xff386BF6)),
            tabBackgroundColor: const Color(0xffD4D9E7),
            padding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            duration: const Duration(milliseconds: 600),
            tabs: [
              const GButton(

                icon: LineIcons.home,
                text: (" Home"),
              ),
              const GButton(

                icon:  LineIcons.calendarAlt,
                text: (" Timetable"),
              ),
              const GButton(

                icon:  Icons.analytics,
                text: (" Attendance"),
              ),
              const GButton(

                icon: LineIcons.userAlt,
                text: ' Profile',
              )
            ]
        ),
      )
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
