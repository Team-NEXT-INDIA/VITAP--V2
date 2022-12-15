import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/screens/Student/Homepage/components/PromoSlider.dart';
import 'package:myapp/utils/utils.dart';

import '../../../customs/theme.dart';
import '../../../utils/widget_functions.dart';
import '../Layout.dart';
import 'PromoView.dart';
import 'components/CustomButtons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            stretch: true,
            pinned: true,
            toolbarHeight: 60,
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black87),
            expandedHeight: 20,
            backgroundColor: scaffoldBackground,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Oct 23rd,2022',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.8,
                  color: const Color(0xd3002179),
                ),
              ),
              centerTitle: true,
              background: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {},
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(

                                  border: Border.all(
                                    color: Color(0xffD9D8D8),
                                    width:
                                        0.2, //                   <--- border width here
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Icon(
                                    Icons.notifications_none_sharp,
                                    color: Color(0xff212121)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        right: 10,
                      ),
                      child: Column(
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {},
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(

                                  border: Border.all(
                                    color: Color(0xffD9D8D8),
                                    width:
                                        0.2, //                   <--- border width here
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Icon(Icons.person_outline_outlined,
                                    color: Color(0xff212121)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //Main Slider for Promotions
                  PromoSlider(),
                  addVerticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 17, right: 17, bottom: 50),
                    child: Container(
                      decoration: containerDecoration,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "FOR YOU",
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff0F2552),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 2,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color: Color(0xff0F2552)),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      forYouButtons(),
                                      forYouButtons(),
                                      forYouButtons(),
                                      forYouButtons(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: const [
                                      forYouButtons(),
                                      forYouButtons(),
                                      forYouButtons(),
                                      forYouButtons(),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
