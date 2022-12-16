import 'package:flutter/material.dart';

import '../../../../customs/theme.dart';
import '../../../../utils/utils.dart';

class forYouButtons extends StatelessWidget {
  const forYouButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10
      ),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              // gradient: const LinearGradient(
              //   colors: [Color(0xFF4B7BFD), Color(0xFF174EE4)],
              //   stops: [0, 1],
              //   begin: AlignmentDirectional(1, -0.64),
              //   end: AlignmentDirectional(-1, 0.64),
              // ),
              color: Colors.white,
              border: Border.all(
                color: Colors.black38,
                width: 0.2
              ),
              borderRadius: BorderRadius.circular(7),
            ),
            child:  Icon(
              Icons.bookmark_border,
              color: primaryColor,
            ),
          ),
          Text(
            'Grades',
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xff0F2552),
            ),
          ),
        ],
      ),
    );
  }
}

