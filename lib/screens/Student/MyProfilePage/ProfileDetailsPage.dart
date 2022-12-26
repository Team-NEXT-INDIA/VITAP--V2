import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../customs/theme.dart';
import '../../../utils/utils.dart';

class ProfileDetailsPage extends StatefulWidget {
  const ProfileDetailsPage({super.key});

  @override
  _ProfileDetailsPageState createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.black54,
                statusBarIconBrightness: Brightness.light,
                // For Android (dark icons)
                statusBarBrightness: Brightness.dark, // For iOS (dark icons)
              ),
              floating: false,
              snap: false,
              stretch: true,
              pinned: true,
              title: Text(
                  "My Profile",
                style: SafeGoogleFont(
                    'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: secondaryBlue
                ),
              ),
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: <Widget>[

                        Container(
                          height: MediaQuery.of(context).size.height * 0.264,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 30),
                          decoration: profileGradient,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "SANYU RAJ",
                                    style: SafeGoogleFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 24,
                                        color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    "21BCE8381",
                                    style: SafeGoogleFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: const Color(0x74FFFFFF)
                                    ),
                                  ),
                                ],
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 42.0,
                                child: CircleAvatar(
                                  radius: 36.0,
                                  backgroundImage:
                                  NetworkImage('https://img.freepik.com/free-photo/happy-young-female-student-holding-notebooks-from-courses-smiling-camera-standing-spring-clothes-against-blue-background_1258-70161.jpg?w=2000'),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],

                    ),
                  ],
                ),
              ),
              expandedHeight: 230.0,
              bottom: TabBar(
                labelStyle: TextStyle(


                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: primaryColor

                ),
                indicatorColor: secondaryBlue,
                labelColor: primaryColor,
                tabs: [
                  Tab(text: 'PERSONAL'),
                  Tab(text: 'EDUCATION'),
                  Tab(text: 'MENTOR'),
                ],
                controller: controller,
              ),
            )
          ];
        },
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                  controller: controller,
                  children: [
                Container(
                  color: Colors.red,
                  height: 250,
                ),
                Container(
                  color: Colors.blueAccent,
                  height: 250,
                ),
                Container(
                  color: Colors.greenAccent,
                  height: 250,
                )
              ]),
            )
          ],
        )
      ),
    );
  }
}