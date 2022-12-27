// ignore_for_file: camel_case_types

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../customs/theme.dart';
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
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xFF002C64),
            statusBarIconBrightness: Brightness.light,
            // For Android (dark icons)
            statusBarBrightness: Brightness.dark, // For iOS (dark icons)
          ),
        ),
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/images/on-boarding/login-bg.png',
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInUpBig(
                      duration: Duration(seconds: 1),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0, 4),
                              blurRadius: 25,
                            ),
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                          child: Column(
                            children: [
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Container(
                              //       height: 6,
                              //       width: 70,
                              //       decoration: BoxDecoration(
                              //           color: Color(0xfff8f8f8),
                              //           borderRadius: BorderRadius.circular(50)),
                              //     ),
                              //     SizedBox(
                              //       height: 20,
                              //     )
                              //   ],
                              // ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                width: MediaQuery.of(context).size.height,
                                decoration: BoxDecoration(
                                    color: const Color(0x1F767680),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(4),
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
                                    StudentTab(),
                                    FacultyTab(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StudentTab extends StatefulWidget {
  const StudentTab({Key? key}) : super(key: key);

  @override
  State<StudentTab> createState() => _StudentTabState();
}

class _StudentTabState extends State<StudentTab> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Username',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xd3002179),
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
                hintText: 'Type your username',
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
              Text(
                'Password',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xd3002179),
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
          loginButton(
            text: 'Login as Student',
          ),
        ],
      ),
    );
  }
}

class FacultyTab extends StatefulWidget {
  const FacultyTab({Key? key}) : super(key: key);

  @override
  State<FacultyTab> createState() => _FacultyTabState();
}

class _FacultyTabState extends State<FacultyTab> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Faculty Username',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xd3002179),
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
              Text(
                'Password',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xd3002179),
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
          loginButton(
            text: 'Login as Faculty',
          ),
        ],
      ),
    );
  }
}

class loginButton extends StatelessWidget {
  const loginButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Layout()),
          );
        },
        color: const Color(0xff016bff),
        elevation: 1,
        splashColor: const Color(0x5c003e8a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        textColor: const Color(0xffffffff),
        height: 41,
        minWidth: MediaQuery.of(context).size.width,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
