import 'package:flutter/material.dart';

class BorderIcon extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;


  const BorderIcon(
      {Key? key,
        required this.child,
        required this.padding,
        required this.width,
        required this.height})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(100.0)),
            border: Border.all(color: Color(0xffD9D8D8), width: 2)),
        padding: padding ?? const EdgeInsets.all(8.0),
        child: Center(child: child));
  }
}