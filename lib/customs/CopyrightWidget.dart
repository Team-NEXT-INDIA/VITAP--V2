import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../utils/widget_functions.dart';

class Copyright extends StatelessWidget {
  const Copyright({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(20),
        Text(
          "© 2023 Next Verse LLC  |  VITAP SDC ",
          style: SafeGoogleFont("Poppins",
              color: Color(0xffBDB9B9),
              fontSize: 12,
              fontWeight: FontWeight.w300),
        ),
        Text(
          "Beta version : 0.0121",
          style: SafeGoogleFont(
            "Poppins",
            color: Color(0xffD9D9D9),
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        addVerticalSpace(30),
      ],
    );
  }
}
