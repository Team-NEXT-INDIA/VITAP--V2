import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color primaryColor = const Color(0xFF386BF6);
Color scaffoldBackground2 = const Color(0xffF9F9F9);
Color scaffoldBackground = const Color(0xffffffff);

Color iconPrimary = const Color(0xff212121);
Color footerBackground = const Color(0xFFF0F0F0);
Color titlePrimary = const Color(0xff232323);

//Box Shadow For Blue Primary

var primaryBoxShadow = BoxShadow(
  offset: Offset(10, 14),
  spreadRadius: -1,
  blurRadius: 39,
  color: Color.fromRGBO(56, 107, 246, 0.33),
);

var primaryBoxShadowLite = BoxShadow(
  offset: Offset(10, 14),
  spreadRadius: -24,
  blurRadius: 39,
  color: Color.fromRGBO(56, 107, 246, 0.33),
);
// Container Decorations
var containerDecoration = BoxDecoration(
  boxShadow: const [
    BoxShadow(
      offset: Offset(3, 2),
      spreadRadius: -4,
      blurRadius: 50,
      color: Color.fromRGBO(0, 0, 0, 0.07058823529411765),
      // color: Color.fromRGBO(0, 0, 0, 0.22),
    ),
  ],
  color: Colors.white,
  borderRadius: BorderRadius.circular(16),
);




var primaryGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff4B7BFD),
      Color(0xff174EE4),
    ],
  ),
);

var primaryGradientOnly = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xff4B7BFD),
    Color(0xff174EE4),
  ],
);

var attendanceListShade = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xffFFFFFF),
    Color(0xffffff),
  ],
);