import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:myapp/screens/Student/Homepage/components/FeatureCards.dart';
import 'package:myapp/screens/Student/Homepage/components/Footer.dart';
import 'package:myapp/screens/Student/Homepage/components/MyButton.dart';
import 'package:myapp/screens/Student/Homepage/components/MyFacultyBuild.dart';
import 'package:myapp/screens/Student/Homepage/components/PromoSlider.dart';
import 'package:myapp/screens/Student/Homepage/components/UpcomingEvents.dart';
import 'package:myapp/utils/utils.dart';

import '../../../customs/animation.dart';
import '../../../customs/theme.dart';
import '../../../utils/widget_functions.dart';
import '../Layout.dart';
import 'PromoView.dart';
import 'components/CustomButtons.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {


  late ScrollController _scrollController;
  bool _isScrolled = false;


  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollChange);

    super.initState();
  }

  void _listenToScrollChange() {
    if (_scrollController.offset >= 100.0) {
      setState(() {
        _isScrolled = true;
      });
    } else {
      setState(() {
        _isScrolled = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackground,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            collapsedHeight: 10,
            toolbarHeight: 10,
            automaticallyImplyLeading: false,
            expandedHeight: 158.0,
            elevation: 0,
            pinned: true,
            floating: false,
            stretch: true,
            // expandedHeight: 149.0,
            // collapsedHeight: 60,
            surfaceTintColor: Color(0xffF9F9F9),
            // automaticallyImplyLeading: false,
            // elevation: 0,
            // pinned: true,
            // floating: false,
            // centerTitle: true,
            // stretch: true,
            backgroundColor: Color(0xdfffffff),
            // bottom: AppBar(
            //
            // ),
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale : 1,
              collapseMode: CollapseMode.pin,
              stretchModes: [
                StretchMode.zoomBackground,
                // StretchMode.fadeTitle
              ],
            background: Container(
              color: scaffoldBackground,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 45,
                            left: 20,
                          ),
                          child: Column(
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                elevation: 0,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {},
                                  child: Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffefefef),
                                        width:
                                        0.8, //                   <--- border width here
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Icon(Icons.notifications_none_sharp,
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
                            right: 20,
                          ),
                          child: Column(
                            children: [
                              Material(
                                elevation: 19,
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {
                                    showMaterialBanner();
                                  },
                                  child: Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffefefef),
                                        width:
                                            0.8, //                   <--- border width here
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
                    AnimatedOpacity(
                      opacity: _isScrolled ? 0.0 : 1.0,
                      duration: Duration(milliseconds: 500),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                          Text(
                                "Welcome Back👋",
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize:20,
                                  fontWeight: FontWeight.w200,
                                  height: 1 ,
                                  color: const Color(0xd3000000),
                                ),
                              ),

                            Text(
                              "Samuel Philip",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                height: 1.5 ,
                                color: const Color(0xd3000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    //Main Slider for Promotions

                    PromoSlider(),
                    MyButtonsView(),
                    addVerticalSpace(20),

                    upcomingEventsBuild(),
                    addVerticalSpace(20),
                    FeatureCardsWidget(),
                    addVerticalSpace(20),

                    myFacultyBuild(),
                    addVerticalSpace(20),

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 17, right: 17, bottom: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.6,
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
                              addVerticalSpace(10),
                              Expanded(
                                child: GridView(
                                  padding: EdgeInsets.zero,
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 1,
                                    mainAxisSpacing: 5,
                                    childAspectRatio: 1,
                                  ),
                                  primary: false,
                                  children: <Widget>[
                                    forYouButtons(btnName: 'Notes',icon: LineIcons.file,),
                                    forYouButtons(btnName: 'Attendance',icon: LineIcons.pieChart,),
                                    forYouButtons(btnName: 'Chat',icon: Icons.chat_bubble_outline,),
                                    forYouButtons(btnName: 'Grades',icon: Icons.grade_outlined,),
                                    forYouButtons(btnName: 'Messages',icon: Icons.message_outlined,),
                                    forYouButtons(btnName: 'Downloads',icon: Icons.file_copy,),
                                    forYouButtons(btnName: 'Fees',icon: Icons.payment_outlined,),
                                    forYouViewAll(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpace(20),
                    footerBuild()
                  ],
                ),
              ]
            ),
          )
        ],
      ),
    );
  }

  showMaterialBanner(){
    ScaffoldMessenger.of(context)..removeCurrentMaterialBanner()..showMaterialBanner(
        MaterialBanner(
          content: const Text('This is Flutter 2.5 Material Banner'),
          leading: const Icon(Icons.info),
          backgroundColor: Colors.yellow,
          actions: [
            TextButton(onPressed: (){}, child: const Text('Some Action')),
            TextButton(onPressed: (){
              ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
            }, child: const Text('Dismiss')),
          ],
        )
    );
  }
}
