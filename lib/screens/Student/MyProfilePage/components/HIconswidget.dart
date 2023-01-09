import 'package:flutter/material.dart';
import 'package:myapp/customs/theme.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../../utils/utils.dart';

class hIconsWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final GestureTapCallback? onTap;

  const hIconsWidget(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: onTap,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.width * 0.15,
              decoration: BoxDecoration(
                boxShadow: [primaryBoxShadow],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: primaryColor,
                  size: 22,
                ),
              ),
            ),
          ),
        ),
        addVerticalSpace(6),
        Text(
          title,
          style: SafeGoogleFont('Poppins',
              fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
