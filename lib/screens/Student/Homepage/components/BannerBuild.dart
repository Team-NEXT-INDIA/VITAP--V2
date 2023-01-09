import 'package:flutter/material.dart';
import 'package:myapp/customs/theme.dart';

import '../../../../utils/utils.dart';

class bannerBuild extends StatefulWidget {
  bannerBuild({Key? key}) : super(key: key);

  @override
  State<bannerBuild> createState() => _bannerBuildState();
}

class _bannerBuildState extends State<bannerBuild> {
  bool _isVisible = true;

  void removeBanner() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.21,
            decoration: BoxDecoration(
              boxShadow: [primaryBoxShadow],
              borderRadius: BorderRadius.circular(7),
              color: primaryColor,
              image: DecorationImage(
                image: AssetImage("assets/images/home/pattern_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: new Icon(Icons.close),
                      color: Colors.white,
                      onPressed: removeBanner,
                    ),
                  ],
                ),
                Text(
                  "Enjoying the application?",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Make sure to Rate us!",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0x8cffffff),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: removeBanner,
                  child: const Text(
                    'Rate now',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ],
            ) /* add child content here */,
          ),
        ],
      ),
    );
  }
}
