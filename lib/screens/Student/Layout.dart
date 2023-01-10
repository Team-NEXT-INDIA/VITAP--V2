import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:myapp/screens/Student/Homepage/Homepage.dart';
import 'package:myapp/screens/Student/MyProfilePage/Profilepage.dart';

import '../../customs/theme.dart';
import 'AttendancePage/AttendancePage.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedPage = 0;

  final List<Widget> pages = [
    const HomePage(),
    const HomePage(),
    const AttendancePage(),
    const HomePage(),
    const profilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: pages[_selectedPage],
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
          onTap: _onItemTapped,
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
