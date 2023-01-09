import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:myapp/screens/Student/Homepage/components/BannerBuild.dart';
import 'package:myapp/screens/Student/Homepage/components/FeatureCards.dart';
import 'package:myapp/screens/Student/Homepage/components/Footer.dart';
import 'package:myapp/screens/Student/Homepage/components/MyFacultyBuild.dart';
import 'package:myapp/screens/Student/Homepage/components/PromoSlider.dart';
import 'package:myapp/screens/Student/Homepage/stream_slider_build.dart';
import 'package:myapp/utils/utils.dart';

import '../../../customs/theme.dart';
import '../../../utils/widget_functions.dart';
import 'components/CustomButtons.dart';
import 'components/Drawer.dart';
import 'components/MyButton.dart';
import 'components/UpcomingEvents.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();
  late ScrollController _scrollController;
  bool _isScrolled = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenToScrollChange);

    super.initState();
  }

  void _listenToScrollChange() {
    if (_scrollController.offset >= 10.0) {
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
    return InnerDrawer(
      key: _innerDrawerKey,
      onTapClose: true,
      swipe: true,
      boxShadow: const [
        BoxShadow(
          offset: Offset(3, 3),
          spreadRadius: 0,
          blurRadius: 38,
          color: Color.fromRGBO(0, 0, 0, 0.11372549019607843),
        )
      ],
      scale: IDOffset.horizontal(1),
      proportionalChildArea: false,
      colorTransitionChild: Colors.transparent, // default Color.black54
      colorTransitionScaffold: Colors.transparent, // default Color.black54
      leftAnimationType: InnerDrawerAnimation.static,
      offset: IDOffset.only(bottom: 0.0, right: 0.0, left: 0.8),
      leftChild: Scaffold(
        body: SideDrawer(innerDrawerKey: _innerDrawerKey),
      ),
      scaffold: Scaffold(
        backgroundColor: scaffoldBackground,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              collapsedHeight: 2,
              toolbarHeight: 1,
              automaticallyImplyLeading: false,
              expandedHeight: MediaQuery.of(context).size.width * 0.41,
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
              backgroundColor: scaffoldBackground,
              // bottom: AppBar(
              //
              // ),
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                collapseMode: CollapseMode.pin,
                stretchModes: [
                  StretchMode.zoomBackground,
                  // StretchMode.fadeTitle
                ],
                background: Container(
                  height: MediaQuery.of(context).size.width * 0.41,
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
                                  color: homeHeadericonbg,
                                  elevation: 0,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {
                                      _innerDrawerKey.currentState?.toggle();
                                    },
                                    child: Container(
                                      width: 55,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        // color: const Color(0x59c4c4c4),
                                        border: Border.all(
                                          color: Color(0xffefefef),
                                          width:
                                              0.8, //                   <--- border width here
                                        ),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.user,
                                        color: homeHeadericonfg,
                                      ),
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
                                Builder(
                                  builder: (context) {
                                    return Material(
                                      elevation: 19,
                                      borderRadius: BorderRadius.circular(50),
                                      color: homeHeadericonbg,
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50),
                                        onTap: () {},
                                        child: Container(
                                          width: 55,
                                          height: 55,
                                          decoration: BoxDecoration(
                                            // color: const Color(0x59c4c4c4),
                                            border: Border.all(
                                              color: Color(0xffefefef),
                                              width:
                                                  0.8, //                   <--- border width here
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.bell,
                                            color: homeHeadericonfg,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome Back👋",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                height: 1,
                                color: const Color(0xff9b9b9c),
                              ),
                            ),
                            Text(
                              "Samuel Philip",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: const Color(0xff131313),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    PromoSlider(),
                    addVerticalSpace(20),

                    upcomingEventsBuild(),
                    addVerticalSpace(20),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 17, right: 17, bottom: 20),
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.57,
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
                                  physics: NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1,
                                  ),
                                  primary: false,
                                  children: <Widget>[
                                    forYouButtons(
                                      btnName: 'Notes',
                                      icon: LineIcons.file,
                                    ),
                                    forYouButtons(
                                      btnName: 'Attendance',
                                      icon: LineIcons.pieChart,
                                    ),
                                    forYouButtons(
                                      btnName: 'Chat',
                                      icon: Icons.chat_bubble_outline,
                                    ),
                                    forYouButtons(
                                      btnName: 'Grades',
                                      icon: Icons.grade_outlined,
                                    ),
                                    forYouButtons(
                                      btnName: 'Messages',
                                      icon: Icons.message_outlined,
                                    ),
                                    forYouButtons(
                                      btnName: 'Downloads',
                                      icon: Icons.file_copy,
                                    ),
                                    forYouButtons(
                                      btnName: 'Fees',
                                      icon: Icons.payment_outlined,
                                    ),
                                    forYouViewAll(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // GridButtons(),
                    bannerBuild(),
                    addVerticalSpace(10),
                    MyButtonsView(),
                    addVerticalSpace(10),
                    StreamSliderBuild(),
                    addVerticalSpace(20),

                    addVerticalSpace(20),
                    FeatureCardsWidget(),
                    addVerticalSpace(20),
                    MyFacultyBuild(),
                    addVerticalSpace(20),
                    footerBuild()
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
