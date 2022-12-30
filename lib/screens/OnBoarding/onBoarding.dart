import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/screens/OnBoarding/on_boardingSlideshow.dart';
import 'package:myapp/utils/utils.dart';

import '../LoginPage/loginpage.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: CustomScrollView(
            physics: ClampingScrollPhysics(),
            // scrollBehavior: ScrollBehavior(),
            // dragStartBehavior: DragStartBehavior.down,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Stack(children: [
                  BoardingSlideshow(),
                  Container(
                    child: Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.45,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 25,
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Start using the app',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff002079),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 45),
                                        constraints: const BoxConstraints(
                                          maxWidth: 331,
                                        ),
                                        child: Text(
                                          'Now access your essentials using our app\nand get access all the academic details',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: '.SF UI Display',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xd3002179),
                                          ),
                                        ),
                                      ),
                                      Material(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xff132137),
                                        shadowColor: const Color(0x32002c64),
                                        elevation: 40,
                                        child: Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              boxShadow: [
                                                const BoxShadow(
                                                  color: Color(0x32002c64),
                                                  offset: Offset(0, 20),
                                                  blurRadius: 25,
                                                ),
                                              ],
                                            ),
                                            child: InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              onTap: () => Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                      builder: (context) =>
                                                          LoginPage())),

                                              splashColor: Colors.white10, //
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/on-boarding/arrow-right.png')
                                                  ],
                                                ),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
