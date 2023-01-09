import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/customs/theme.dart';
import 'package:myapp/screens/Student/MyProfilePage/components/HeaderIcons.dart';
import 'package:myapp/screens/Student/MyProfilePage/components/profiletiles.dart';
import 'package:myapp/utils/utils.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../customs/CopyrightWidget.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "My Profile",
              style: SafeGoogleFont('Poppins',
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  color: Colors.white),
            ),
            centerTitle: true,
            toolbarHeight: 58,
            automaticallyImplyLeading: false,
            expandedHeight: 300.0,
            elevation: 0,
            pinned: true,
            backgroundColor: primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              stretchModes: [
                StretchMode.fadeTitle,
              ],
              background: Container(
                padding: const EdgeInsets.only(top: 30),
                decoration: profileGradient,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.rotateRight,
                              color: Colors.white,
                              size: 18.5,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              FontAwesomeIcons.arrowRightFromBracket,
                              color: Colors.white,
                              size: 18.5,
                            )),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: const BoxDecoration(
                          // color: Colors.black
                          ),
                      child: Column(
                        children: [
                          Text(
                            "SANYU RAJ",
                            style: SafeGoogleFont('Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          Text(
                            "21BCE8381",
                            style: SafeGoogleFont('Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: const Color(0x74FFFFFF)),
                          ),
                        ],
                      ),
                    ),
                    const headerIcons(),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: const BoxDecoration(color: Color(0xffF2F7FF)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 42.0,
                        child: CircleAvatar(
                          radius: 36.0,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-photo/happy-young-female-student-holding-notebooks-from-courses-smiling-camera-standing-spring-clothes-against-blue-background_1258-70161.jpg?w=2000'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Application no  :",
                                style: SafeGoogleFont('Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: const Color(0xff5B5B5B)),
                              ),
                              Text(
                                " 21022xxxxx",
                                style: SafeGoogleFont('Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Account Status :",
                                style: SafeGoogleFont('Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: const Color(0xff5B5B5B)),
                              ),
                              Text(
                                " ACTIVE",
                                style: SafeGoogleFont('Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: const Color(0xff25D00A)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, bottom: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Account",
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff43434E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: Icons.person,
                  title: 'Profile',
                  subtitle: 'Check your personal information',
                  gradientColor: const [Color(0xffFFCF01), Color(0xffD1A300)],
                ),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: Icons.wifi,
                  title: 'WIFI - Connect',
                  subtitle: 'Connect to the wifi in-campus',
                  gradientColor: const [Color(0xff4B7BFD), Color(0xff1744BF)],
                ),
                addVerticalSpace(25),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Application",
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff43434E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomListStyle(
                  visible: false,
                  onTap: () {},
                  icon: FontAwesomeIcons.rectangleAd,
                  title: 'Advertise',
                  subtitle: 'Promotion related queries',
                  gradientColor: const [Color(0xff9D61F3), Color(0xff5114A8)],
                ),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: FontAwesomeIcons.bell,
                  title: 'Notifications',
                  subtitle: 'Control your notifications',
                  gradientColor: const [Color(0xff399ECA), Color(0xff03628B)],
                ),
                CustomListStyle(
                  visible: false,
                  onTap: () {},
                  icon: FontAwesomeIcons.faceSmile,
                  title: 'Join beta',
                  subtitle: 'Early access to our testing’s',
                  gradientColor: const [Color(0xff19C79D), Color(0xff038062)],
                ),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: FontAwesomeIcons.circleInfo,
                  title: 'Help centre',
                  subtitle: 'Get help if you have any issues',
                  gradientColor: const [Color(0xff386BF6), Color(0xff386BF6)],
                ),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: FontAwesomeIcons.heart,
                  title: 'Tell a friend',
                  subtitle: 'Share the application now',
                  gradientColor: const [Color(0xff3430F8), Color(0xff080596)],
                ),
                addVerticalSpace(25),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: FontAwesomeIcons.handshake,
                  title: 'User Agreement',
                  subtitle: 'user agreement  for our services',
                  gradientColor: const [Color(0xff6467E3), Color(0xff5054FF)],
                ),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: FontAwesomeIcons.userLock,
                  title: 'Privacy policy',
                  subtitle: 'Our End-to-End Privacy policies',
                  gradientColor: const [Color(0xff19C79D), Color(0xff038062)],
                ),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: FontAwesomeIcons.bug,
                  title: 'Report an issue',
                  subtitle: 'Report bug’s and issues',
                  gradientColor: const [Color(0xffFD2929), Color(0xff900A0A)],
                ),
                CustomListStyle(
                  visible: true,
                  onTap: () {},
                  icon: FontAwesomeIcons.bug,
                  title: 'Send us your feedback',
                  subtitle: 'Rate us now',
                  gradientColor: const [Color(0xffFFCF01), Color(0xffFFD72D)],
                ),
                const Copyright(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
