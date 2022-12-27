import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../customs/theme.dart';
import '../../../../utils/utils.dart';

class MyButtonsView extends StatefulWidget {
  const MyButtonsView({Key? key}) : super(key: key);

  @override
  State<MyButtonsView> createState() => _MyButtonsViewState();
}

class _MyButtonsViewState extends State<MyButtonsView> {
  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(7);
    double containerheight = 90;
    double containerwidth = 100;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Material(
          borderRadius: borderRadius,
          color: buttonBackground,
          child: InkWell(
            onTap: () {},
            child: Container(
              width: containerwidth,
              height: containerheight,
              decoration: BoxDecoration(
                boxShadow: [primaryBoxShadowLite],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.users,
                        color: iconColor30,
                        size: 30,
                      ),
                      Text(
                        "My Mentor",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12,
                          height: 2,
                          fontWeight: FontWeight.w500,
                          color: iconColor30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          borderRadius: borderRadius,
          color: buttonBackground,
          child: InkWell(
            onTap: () {},
            child: Container(
              width: containerwidth,
              height: containerheight,
              decoration: BoxDecoration(
                boxShadow: [primaryBoxShadowLite],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.bookOpen,
                        color: iconColor30,
                        size: 30,
                      ),
                      Text(
                        "My Courses",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12,
                          height: 2,
                          fontWeight: FontWeight.w500,
                          color: iconColor30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          elevation: 0,
          borderRadius: borderRadius,
          color: buttonBackground,
          child: InkWell(
            onTap: () {},
            child: Container(
              width: containerwidth,
              height: containerheight,
              decoration: BoxDecoration(
                boxShadow: [primaryBoxShadowLite],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.receipt,
                        color: iconColor30,
                        size: 30,
                      ),
                      Text(
                        "My Receipts",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 12,
                          height: 2,
                          fontWeight: FontWeight.w500,
                          color: iconColor30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
