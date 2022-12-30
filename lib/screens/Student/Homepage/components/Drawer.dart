import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';

import '../../../../utils/utils.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key? key,
    required GlobalKey<InnerDrawerState> innerDrawerKey,
  })  : _innerDrawerKey = innerDrawerKey,
        super(key: key);

  final GlobalKey<InnerDrawerState> _innerDrawerKey;

  @override
  Widget build(BuildContext context) {
    var listStyle = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    );
    double iconSize = 19;
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[200],
      child: Row(
        children: [
          SizedBox(
              width: 65,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: CircleAvatar(
                        radius: 36.0,
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/happy-young-female-student-holding-notebooks-from-courses-smiling-camera-standing-spring-clothes-against-blue-background_1258-70161.jpg?w=2000'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Column(
                      children: [
                        Material(
                          elevation: 4.0,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.transparent,
                          child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor:
                                  CupertinoColors.lightBackgroundGray,
                              child: IconButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: const Icon(Icons.add))),
                        ),
                        Material(
                          elevation: 4.0,
                          shape: CircleBorder(),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.transparent,
                          child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor:
                                  CupertinoColors.lightBackgroundGray,
                              child: IconButton(
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: const Icon(Icons.settings))),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Expanded(
            child: SafeArea(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[100]!))),
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 16, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                    child: Text(
                                  "21BCE7615",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                                IconButton(
                                    onPressed: () {
                                      _innerDrawerKey.currentState?.close();
                                    },
                                    icon: const Icon(Icons.close))
                              ],
                            ),
                            const Text(
                              "success is approximately equal to past good",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Material(
                            color: Colors.white,
                            child: ListView(children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 16, left: 16, right: 16),
                                child: Text(
                                  'ACCOUNT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.person,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'My Profile',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.access_time_filled_outlined,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Set yourself as away',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              Divider(
                                height: 1,
                                thickness: 1,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10.0),
                                child: Text(
                                  'APPLICATION',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.person_pin,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Modify Profile',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.lock,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Privacy and Visibility',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.phone_android_sharp,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'App icon',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                                trailing: Container(
                                  margin: EdgeInsets.all(2),
                                  height:
                                      MediaQuery.of(context).size.height * 0.03,
                                  width:
                                      MediaQuery.of(context).size.width * 0.12,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0x8e5c71ff), width: 1),
                                      color: Color(0x8e01072c),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                leading: Icon(
                                  Icons.keyboard,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Rate us',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.rocket_launch,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Join beta',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              Divider(
                                height: 1,
                                thickness: 1,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10.0),
                                child: Text(
                                  'ABOUT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.key,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Privacy policy',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.person_outline_outlined,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'User agreement',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              Divider(
                                height: 1,
                                thickness: 1,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10.0),
                                child: Text(
                                  'SUPPORT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.help,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Help Centre',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.info,
                                  size: iconSize,
                                ),
                                title: Text('About', style: listStyle),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.person_outline_outlined,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'User agreement',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.feedback,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Send Feedback',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.report,
                                  size: iconSize,
                                ),
                                title: Text(
                                  'Report an issue',
                                  style: listStyle,
                                ),
                                onTap: () => {},
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1, 0, 0, 10),
                                    child: Material(
                                      borderRadius: BorderRadius.circular(7),
                                      color: CupertinoColors
                                          .extraLightBackgroundGray,
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(7),
                                        onTap: () {},
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.6,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.10,
                                          decoration: BoxDecoration(
                                            // image: DecorationImage(
                                            //   fit: BoxFit.cover,
                                            //   image: Image.network(
                                            //     'https://img.freepik.com/free-vector/blue-pink-halftone-background_53876-99004.jpg',
                                            //   ).image,
                                            // ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                "assets/images/home/logo_width.png",
                                                width: 90,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ])),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            width: 50,
          )
        ],
      ),
    );
  }
}
