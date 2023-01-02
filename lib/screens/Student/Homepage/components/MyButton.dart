import 'package:flutter/material.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../../customs/onTapScale.dart';
import '../../../../utils/utils.dart';

class MyButtonsView extends StatefulWidget {
  const MyButtonsView({Key? key}) : super(key: key);

  @override
  State<MyButtonsView> createState() => _MyButtonsViewState();
}

class _MyButtonsViewState extends State<MyButtonsView> {
  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(100);
    double containerheight = MediaQuery.of(context).size.height * 0.07;
    double containerwidth = MediaQuery.of(context).size.width * 0.15;

    var iconHeight = 30.0;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Quick Link's",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff43434E),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 0, left: 17, right: 17, bottom: 0),
          height: MediaQuery.of(context).size.width * 0.26,
          child: GridView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 0,
              mainAxisSpacing: 10,
              childAspectRatio: 0.12,
            ),
            primary: false,
            children: <Widget>[
              Column(
                children: [
                  CustomTap(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/icons/icon-bg1.png"),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/icons/mentor.png",
                            width: iconHeight,
                            height: iconHeight,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  addVerticalSpace(5),
                  Text(
                    "My Mentor",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 09,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff131313),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  CustomTap(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/icons/icon-bg2.png"),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/icons/book-stack.png",
                            width: iconHeight,
                            height: iconHeight,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  addVerticalSpace(5),
                  Text(
                    "My Courses",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 09,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff131313),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  CustomTap(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/icons/icon-bg3.png"),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/icons/receipt.png",
                            width: 38.0,
                            height: 38.0,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  addVerticalSpace(5),
                  Text(
                    "My Receipts",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 09,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff131313),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  CustomTap(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/icons/icon-bg4.png"),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/icons/purse.png",
                            width: 38.0,
                            height: 38.0,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                  addVerticalSpace(5),
                  Text(
                    "My Wallet",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 09,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff131313),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
