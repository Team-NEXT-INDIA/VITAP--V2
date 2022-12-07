import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:myapp/utils.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 394;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 1;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration (
          color: Color(0xff000000),
          image: DecorationImage (
            fit: BoxFit.fill,
            image: AssetImage (
              'assets/images/on-boarding/login-bg-1-bg.png',

            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 32*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(

                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                    width: 138*fem,
                    height: 138*fem,
                    child: Stack(
                      children: [
                        Positioned(

                          left: 46*fem,
                          top: 86*fem,
                          child: Align(
                            child: SizedBox(
                              width: 63*fem,
                              height: 47*fem,
                              child: Image.asset(
                                'assets/images/on-boarding/ellipse-139.png',
                                width: 63*fem,
                                height: 47*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 138*fem,
                              height: 138*fem,
                              child: Image.asset(
                                'assets/images/on-boarding/first-place-medal-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 300.1*fem,
                      height: 300.1*fem,
                      child: Stack(
                        children: [

                          Positioned(
                            left: 30*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 300.1*fem,
                                height: 300.1*fem,
                                child: Image.asset(
                                  'assets/images/on-boarding/graduation-hat-2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.60,
              padding: EdgeInsets.fromLTRB(30*fem, 79*fem, 29*fem, 0),
              width: double.infinity,
              decoration: BoxDecoration (
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.only (
                  topLeft: Radius.circular(47*fem),
                  topRight: Radius.circular(47*fem),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 25*fem,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 7*fem),
                      constraints: BoxConstraints (
                        maxWidth: 242*fem,
                      ),
                      child: Text(
                        'Start using the app',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 32*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          color: const Color(0xff002079),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
                    constraints: BoxConstraints (
                      maxWidth: 331*fem,
                    ),
                    child: Text(
                      'Now access your essentials using our app\nand get access all the academic details',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.5*ffem/fem,
                        color: const Color(0xd3002179),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    shadowColor: const Color(0x32002c64),
                    elevation: 40,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                      width: 100*fem,
                      height: 102*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(50),
                        // boxShadow:  [
                        //   BoxShadow(
                        //     color:  Color(0x32002c64),
                        //     offset:  Offset(0*fem, 19*fem),
                        //     blurRadius:  25*fem,
                        //   ),
                        // ],
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(50),
                        onTap: () {

                        }, // Image tapped
                        splashColor: Colors.white10, //
                        child: Ink.image(
                          width: 94*fem,
                          height: 102*fem,
                          image: const AssetImage(
                            'assets/images/on-boarding/frame-1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}