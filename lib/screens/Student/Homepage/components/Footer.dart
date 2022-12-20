import 'package:flutter/material.dart';
import 'package:myapp/customs/theme.dart';

import '../../../../utils/utils.dart';

class footerBuild extends StatelessWidget {
  const footerBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: footerBackground,

      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Whoop\nIt up!",
              style: SafeGoogleFont(
                'Open Sans',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color(0xffAEAEAE),
              ),
            ),
            Text("Crafted with love ❤  by\nStudents for Students ️",
              style: SafeGoogleFont(
                'Open Sans',
                fontSize: 14,
                fontWeight: FontWeight.w200,
                color: const Color(0xffA0B1B8),
              ),

            )
          ],
        ),
      ),
    );
  }
}
