import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:myapp/screens/Student/Homepage/Homepage.dart';
import 'package:myapp/screens/Student/MyProfilePage/Profilepage.dart';

import '../../customs/theme.dart';
import 'TimetablePage/Timetablepage.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  late PageController _pageController;
  int _selectedPage = 0;

  List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const TimetablePage(),
    const HomePage(),
    const profilePage(),
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
    return Scaffold(
      extendBody: false,
      body: PageView(
        padEnds: false,
        allowImplicitScrolling: true,
        onPageChanged: (index) => setState(() {
          _selectedPage = index;
        }),
        controller: _pageController,
        children: [...pages],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 19,
          // backgroundColor: Color(0xffEFF3FE),
          showSelectedLabels: true,
          enableFeedback: true,
          currentIndex: _selectedPage,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: primaryColor,
          ),
          selectedItemColor: primaryColor,
          unselectedItemColor: Color(0xff838aa6),
          selectedFontSize: 10,
          unselectedFontSize: 10,
          iconSize: 25,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => _onItemTapped(index),
          items: _navBarsItems()),
    );
  }

  List<BottomNavigationBarItem> _navBarsItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(LineIcons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(LineIcons.school),
        label: 'Timetable',
      ),
      const BottomNavigationBarItem(
        icon: Icon(LineIcons.pieChart),
        label: 'Attendance',
      ),
      const BottomNavigationBarItem(
        icon: Icon(LineIcons.calendarAlt),
        label: 'Calender',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'You',
      ),
    ];
  }
}
