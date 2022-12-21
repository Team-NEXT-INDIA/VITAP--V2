import 'package:flutter/material.dart';
import 'package:myapp/customs/theme.dart';
import 'package:myapp/screens/Student/TimetablePage/Timetablepage.dart';

import '../../../../utils/utils.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: primaryGradientOnly,
               ),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage:
                    AssetImage(
                        'assets/images/home/sibi.jpg'
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Text(
                          'u/21BCE7615',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        Container(
                          margin: EdgeInsets.all(2),
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: 1
                            ),
                              color: Color(0xff81A2FF),
                              borderRadius:
                              BorderRadius.circular(50)),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(7),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xff2ED373)
                                ),
                              ),
                              Text(
                                "Online Status : On",
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xbbffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10.0),
            child: Text(
                "Account",
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: titlePrimary,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () => {

            },
          ),
          ListTile(
            leading: Icon(Icons.access_time_filled_outlined),
            title: Text('Set yourself as away'),
            onTap: () => {
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10.0),
            child: Text(
              "Application",
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: titlePrimary,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text('Modify Profile'),
            onTap: () => {
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy and Visibility'),
            onTap: () => {
            },
          ),
          ListTile(
            leading: Icon(Icons.phone_android_sharp),
            title: Text('App icon'),
            onTap: () => {
            },
            trailing:     Container(
              margin: EdgeInsets.all(2),
              height: MediaQuery.of(context).size.height * 0.03,
              width: MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Color(0x8e5c71ff),
                      width: 1
                  ),

                  color: Color(0x8e01072c),
                  borderRadius:
                  BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                  Text(
                    "NEW",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xbbffffff),
                    ),
                  ),
                ],
              ),
            ),
          ),



          ListTile(
            leading: Icon(Icons.keyboard),
            title: Text('Rate us'),
            onTap: () => {
            },
          ),
          ListTile(
            leading: Icon(Icons.rocket_launch),
            title: Text('Join beta'),
            onTap: () => {
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10.0),
            child: Text(
              "About",
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: titlePrimary,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.key),
            title: Text('Privacy policy'),
            onTap: () => {
            },
          ),
          ListTile(
            leading: Icon(Icons.person_outline_outlined),
            title: Text('User agreement'),
            onTap: () => {
            },
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10.0),
            child: Text(
              "Support",
              style: SafeGoogleFont(
                'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: titlePrimary,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help Centre'),
            onTap: () => {
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () => {
            },
          ),
          ListTile(
            leading: Icon(Icons.person_outline_outlined),
            title: Text('User agreement'),
            onTap: () => {
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Send Feedback'),
            onTap: () => {
            },
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text('Report an issue'),
            onTap: () => {
            },
          ),
          Column(
            children: [
              Text(
                "Build : Beta Version",
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                 color: const Color(0xbb2f2f2f),
                ),
              ),
              Text(
                "Acknowledgements",
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xbb2f2f2f),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}