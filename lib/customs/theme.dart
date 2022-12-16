import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


Color primaryColor = const Color(0xFF386BF6);
Color scaffoldBackground2 = const Color(0xffF9F9F9);
Color scaffoldBackground = const Color(0xffffffff);

Color iconPrimary = const Color(0xff212121);


















// Container Decorations
var containerDecoration = BoxDecoration(
  boxShadow: const [
    BoxShadow(
      offset: Offset(3, 2),
      spreadRadius: -4,
      blurRadius: 50,
      color: Color.fromRGBO(0, 0, 0, 0.22),
    ),
  ],
  color: Colors.white,
  borderRadius: BorderRadius.circular(16),
);