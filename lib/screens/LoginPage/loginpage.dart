// ignore_for_file: camel_case_types

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../Student/Layout.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 394;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 1;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff000000),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/on-boarding/login-bg-1-bg.png',
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 36 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 30 * fem, 0 * fem),
                        width: 138 * fem,
                        height: 138 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 46 * fem,
                              top: 86 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 63 * fem,
                                  height: 47 * fem,
                                  child: Image.asset(
                                    'assets/images/on-boarding/ellipse-139.png',
                                    width: 63 * fem,
                                    height: 47 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 138 * fem,
                                  height: 138 * fem,
                                  child: Image.asset(
                                    'assets/images/on-boarding/first-place-medal-1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 300.1 * fem,
                          height: 300.1 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 30 * fem,
                                top: 0 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 300.1 * fem,
                                    height: 300.1 * fem,
                                    child: Image.asset(
                                      'assets/images/on-boarding/graduation-hat-2.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.57,
                  padding: EdgeInsets.fromLTRB(30 * fem, 40 * fem, 29 * fem, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(47 * fem),
                      topRight: Radius.circular(47 * fem),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 25 * fem,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.45,
                        height: MediaQuery.of(context).size.height * 0.45,
                        child: Column(
                          children: [
                            Container(
                              height: 32,
                              width: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                  color: const Color(0x1F767680),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TabBar(
                                  unselectedLabelColor: Colors.black54,
                                  labelColor: Colors.black,
                                  indicatorColor: Colors.white,
                                  indicatorWeight: 1,
                                  indicator: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  controller: tabController,
                                  tabs: const [
                                    Tab(
                                      text: 'Student',
                                    ),
                                    Tab(
                                      text: 'Faculty',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                clipBehavior: Clip.none,
                                viewportFraction: 1,
                                physics: NeverScrollableScrollPhysics(),
                                controller: tabController,
                                children: const [
                                  Tab1(),
                                  Tab2(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Tab1 extends StatefulWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  bool _isVisible = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () async {},
                  child: Text(
                    'Username',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xd3002179),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                autofocus: false,
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'type your username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffECECEC),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () async {},
                  child: Text(
                    'Password',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xd3002179),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextFormField(
                obscureText: !_isVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    icon: _isVisible
                        ? const Icon(
                            Icons.visibility,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                  ),
                  hintText: 'type your password',
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffECECEC),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Layout()),
                  );
                },
                color: const Color(0xff002C64),
                elevation: 20,
                splashColor: const Color(0x5c003e8a),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                textColor: const Color(0xffffffff),
                height: 41,
                minWidth: MediaQuery.of(context).size.width,
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  bool _isVisible = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordOneNumber = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      _isPasswordEightCharacters = false;
      if (password.length >= 8) _isPasswordEightCharacters = true;

      _hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) _hasPasswordOneNumber = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () async {},
                  child: Text(
                    'Faculty Username',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xd3002179),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                autofocus: false,
                obscureText: false,
                decoration: const InputDecoration(
                  hintText: 'username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffECECEC),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () async {},
                  child: Text(
                    'Password',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xd3002179),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: TextFormField(
                onChanged: (password) => onPasswordChanged(password),
                obscureText: !_isVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    icon: _isVisible
                        ? const Icon(
                            Icons.visibility,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                  ),
                  hintText: 'password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffECECEC),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  Layout()),
                      );
                    },
                    color: const Color(0xff002C64),
                    elevation: 20,
                    splashColor: const Color(0x5c003e8a),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    textColor: const Color(0xffffffff),
                    height: 41,
                    minWidth: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
