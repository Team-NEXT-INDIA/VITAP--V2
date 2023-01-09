import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myapp/customs/onTapScale.dart';
import 'package:myapp/customs/theme.dart';

import '../../../../utils/utils.dart';

class FeatureCardsWidget extends StatefulWidget {
  const FeatureCardsWidget({Key? key}) : super(key: key);

  @override
  _FeatureCardsWidgetState createState() => _FeatureCardsWidgetState();
}

class _FeatureCardsWidgetState extends State<FeatureCardsWidget> {
  int _currentFTR = 0;
  final CarouselController _FeatureCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    var colorCard1 = secondaryBlue;
    var colorCard2 = Color(0xff0078ac);
    var colorCard3 = Color(0xff00b259);
    return Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Explore",
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
      CarouselSlider(
        carouselController: _FeatureCarouselController,
        items: [
          Padding(
            padding: const EdgeInsets.only(left: 19.0),
            child: CustomTap(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xfffefefe),
                    strokeAlign: StrokeAlign.outside,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      spreadRadius: -8,
                      blurRadius: 35,
                      color: Color.fromRGBO(0, 0, 0, 0.18),
                    )
                  ],
                  gradient: LinearGradient(
                      colors: [Color(0xff4fc4a7), Color(0xff1997ab)]),
                  borderRadius: BorderRadius.circular(7),
                  shape: BoxShape.rectangle,
                ),
                child: Stack(
                  alignment: const AlignmentDirectional(-1, 1),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Trending 🔥',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xbbffffff),
                            ),
                          ),
                          Text(
                            'Question Bank',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: ImageIcon(
                        AssetImage("assets/images/icons/book_ftr.png"),
                        color: Colors.white,
                        size: 90,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CustomTap(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xfffefefe),
                    strokeAlign: StrokeAlign.outside,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      spreadRadius: -8,
                      blurRadius: 35,
                      color: Color.fromRGBO(0, 0, 0, 0.18),
                    )
                  ],
                  gradient: LinearGradient(
                      colors: [Color(0xff9f2be8), Color(0xff670ff7)]),
                  borderRadius: BorderRadius.circular(7),
                  shape: BoxShape.rectangle,
                ),
                child: Stack(
                  alignment: const AlignmentDirectional(-1, 1),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Career Help',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xC8FFFFFF),
                            ),
                          ),
                          Text(
                            'Alumni Connect',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: ImageIcon(
                        AssetImage("assets/images/icons/people_ftr.png"),
                        color: Colors.white,
                        size: 90,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 19),
            child: CustomTap(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xfffefefe),
                    strokeAlign: StrokeAlign.outside,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      spreadRadius: -8,
                      blurRadius: 35,
                      color: Color.fromRGBO(0, 0, 0, 0.18),
                    )
                  ],
                  gradient: LinearGradient(
                      colors: [Color(0xffff5655), Color(0xffea0411)]),
                  borderRadius: BorderRadius.circular(7),
                  shape: BoxShape.rectangle,
                ),
                child: Stack(
                  alignment: const AlignmentDirectional(-1, 1),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Lost Something?',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xC8FFFFFF),
                            ),
                          ),
                          Text(
                            'Lost & Found',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1, 0),
                      child: ImageIcon(
                        AssetImage("assets/images/icons/pin_ftr.png"),
                        color: Colors.white,
                        size: 90,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
        options: CarouselOptions(
          enableInfiniteScroll: false,
          disableCenter: false,
          pageSnapping: true,
          height: MediaQuery.of(context).size.height * 0.15,
          autoPlay: false,
          enlargeCenterPage: false,
          viewportFraction: 0.7,
          padEnds: false,
          onPageChanged: (index, reason) {
            setState(() {
              _currentFTR = index;
            });
          },
          initialPage: 0,
        ),
      ),
    ]);
  }
}
