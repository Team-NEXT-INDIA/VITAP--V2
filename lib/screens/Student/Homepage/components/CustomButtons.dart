
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../customs/theme.dart';
import '../../../../utils/utils.dart';

class forYouButtons extends StatelessWidget {
  final String btnName;
  final IconData icon;

  const forYouButtons({
    Key? key, required this.btnName, required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Material(
          elevation: 19.0,
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          child: InkWell(
            borderRadius: BorderRadius.circular(7),
            onTap: (){},
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                // gradient: const LinearGradient(
                //   colors: [Color(0xFF4B7BFD), Color(0xFF174EE4)],
                //   stops: [0, 1],
                //   begin: AlignmentDirectional(1, -0.64),
                //   end: AlignmentDirectional(-1, 0.64),
                // ),
                border: Border.all(
                  color: Colors.black38,
                  width: 0.2
                ),
                borderRadius: BorderRadius.circular(7),
              ),
              child:  Icon(
                icon,
                color: primaryColor,
              ),
            ),
          ),
        ),
        Text(
          btnName,
          style: SafeGoogleFont(
            'Poppins',
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: const Color(0xff0F2552),
          ),
        ),
      ],
    );
  }
}


class forYouViewAll extends StatelessWidget {
  const forYouViewAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
    children: [
    Material(
      borderRadius: BorderRadius.circular(7),
      color: primaryColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        onTap: (){},
        child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              // gradient: const LinearGradient(
              //   colors: [Color(0xFF4B7BFD), Color(0xFF174EE4)],
              //   stops: [0, 1],
              //   begin: AlignmentDirectional(1, -0.64),
              //   end: AlignmentDirectional(-1, 0.64),
              // ),

              // border: Border.all(
              //     color: Colors.black38,
              //     width: 0.2
              // ),
              // borderRadius: BorderRadius.circular(7),
            ),

            child:  Stack(
              children: [
                Align(
                alignment: AlignmentDirectional(2, 2),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0x24ffffff),
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
                Align(
                  alignment: AlignmentDirectional(0,0),
                  child: Icon(
                    CupertinoIcons.right_chevron,
                    color: Colors.white,
                  ),
                )
              ]
            ),
          ),
      ),
    ),
      Text(
        'View All',
        style: SafeGoogleFont(
          'Poppins',
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: const Color(0xff0F2552),
        ),
      ),
    ],
      );
  }
}



