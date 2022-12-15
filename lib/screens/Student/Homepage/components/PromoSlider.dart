import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../customs/theme.dart';
import '../../../../utils/utils.dart';
import '../PromoView.dart';

class PromoSlider extends StatefulWidget {
  const PromoSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<PromoSlider> createState() => _PromoSliderState();
}

class _PromoSliderState extends State<PromoSlider> {
  int _current = 0;
  final CarouselController _PromoCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      CarouselSlider(
        carouselController: _PromoCarouselController,
        items: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 17, 0, 17),
            child: Hero(
              transitionOnUserGestures: true,
              tag: 'mainslider',
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(2, 22),
                      spreadRadius: -5,
                      blurRadius: 47,
                      color: Color.fromRGBO(81, 81, 81, 0.29),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                height: 550,
                child: InkWell(
                  onTap: (){

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  PromoView()),
                    );
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          'assets/images/home/slider.png',
                          width: double.infinity,
                          height: 550,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 1),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12, 0, 12, 12),
                          child: ClipRRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 4,
                                sigmaY: 4,
                              ),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    color: const Color(0x704A4A4A),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Color(0x28000000),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: const Color(0x2DD4D4D4),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            8, 8, 8, 8),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'GDC Club x OASIS',
                                          maxLines: 1,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(0, 0, 16, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Tic-Tech-Toe: an interactive fireside chat for introducing students into the different technical domains through well-crafted roadmaps.',
                                                  maxLines: 3,
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    color:
                                                        const Color(0xFFEAEAEA),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
        options: CarouselOptions(
            enableInfiniteScroll: false,
            disableCenter: true,

            pageSnapping: true,
            height: 590,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: 0,
            enlargeStrategy: CenterPageEnlargeStrategy.zoom),
      ),
      AnimatedSmoothIndicator(
        activeIndex: _current,
        count: 3,
        effect: const SlideEffect(
            spacing: 8.0,
            radius: 50.0,
            dotWidth: 5.0,
            dotHeight: 5.0,
            paintStyle: PaintingStyle.stroke,
            strokeWidth: 1.5,
            dotColor: CupertinoColors.systemGrey,
            activeDotColor: Color(0xff002C64)),
      )
    ]);
  }
}
