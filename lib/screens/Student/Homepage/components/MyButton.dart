import 'package:flutter/material.dart';

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
    const buttonViewColor = Color(0xFF386BF6);
    var borderRadius = BorderRadius.circular(7);
    double containerheight = 90;
    double containerwidth = 100;
    return
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Material(
            borderRadius: borderRadius,
            color: buttonViewColor,
            child: InkWell(
              onTap: (){},
              child: Container(

                width: containerwidth,
                height: containerheight,
                decoration: BoxDecoration(
                  boxShadow: [
                    primaryBoxShadowLite
                  ],
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
                        ImageIcon(
                          AssetImage("assets/images/icons/users_btn.png"),
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "My Mentor",
                          style: SafeGoogleFont(
                            'Open Sans',
                            fontSize: 12,
                            height: 2,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
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
            color: buttonViewColor,
            child: InkWell(
              onTap: (){},
              child: Container(
                width: containerwidth,
                height: containerheight,
                decoration: BoxDecoration(
                  boxShadow: [
                    primaryBoxShadowLite
                  ],
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
                        ImageIcon(
                          AssetImage("assets/images/icons/book-open_btn.png"),
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "My Courses",
                          style: SafeGoogleFont(
                            'Open Sans',
                            fontSize: 12,
                            height: 2,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
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
            color: buttonViewColor,
            child: InkWell(
              onTap: (){},
              child: Container(
                width: containerwidth,
                height: containerheight,
                decoration: BoxDecoration(
                  boxShadow: [
                    primaryBoxShadowLite
                  ],
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
                        ImageIcon(
                          AssetImage(
                              "assets/images/icons/clipboard_btn.png"
                          ),
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          "My Receipts",
                          style: SafeGoogleFont(
                            'Open Sans',
                            fontSize: 12,
                            height: 2,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
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
