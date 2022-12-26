import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/Student/Homepage/Homepage.dart';
import 'package:myapp/screens/Student/Homepage/components/MyFacultyBuild.dart';
import 'package:myapp/screens/Student/Homepage/components/PromoSlider.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../customs/theme.dart';
import '../../../utils/gradient_text.dart';
import '../../../utils/utils.dart';

enum ExerciseFilter { ALL, LESS }

class TimetablePage extends StatefulWidget {
  const TimetablePage({Key? key}) : super(key: key);

  @override
  State<TimetablePage> createState() => _TimetablePageState();
}

class _TimetablePageState extends State<TimetablePage> {
  bool favorite = false;
  final List<String> _filters = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackground,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'ATTENDANCE',
          style: SafeGoogleFont(
            'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xd3000000),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Filter by",
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: titlePrimary,
                        ),
                      ),
                      Wrap(
                        spacing: 5.0,
                        children: ExerciseFilter.values
                            .map((ExerciseFilter exercise) {
                          return FilterChip(
                            backgroundColor: const Color(0xffDEDFE1),
                            label: Text(exercise.name),
                            selected: _filters.contains(exercise.name),
                            onSelected: (bool value) {
                              setState(() {
                                if (value) {
                                  if (!_filters.contains(exercise.name)) {
                                    _filters.add(exercise.name);
                                  }
                                } else {
                                  _filters.removeWhere((String name) {
                                    return name == exercise.name;
                                  });
                                }
                              });
                            },
                          );
                        }).toList(),
                      ),
                      addVerticalSpace(16),
                      Material(
                        borderRadius: BorderRadius.circular(7),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7),
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.19,
                            decoration: BoxDecoration(
                              gradient: primaryGradientOnly,
                              borderRadius: BorderRadius.circular(7),
                              shape: BoxShape.rectangle,
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(-1, 1),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 14, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff81A2FF),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "MAT-1003",
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xbbffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Applied \n"
                                        "Statistics",
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Prof. Vemula Rama krishna',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xffFFFFFF),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 17),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "34%",
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 10, top: 10),
                                        width: MediaQuery.of(context).size.width * 0.8,
                                        height: MediaQuery.of(context).size.height * 0.01,
                                        child: const ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          child: LinearProgressIndicator(
                                            value: 0.3,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Color(0xffFD2929)),
                                            // valueColor: AlwaysStoppedAnimation<Color>(Color(0xff11DA00)),
                                            backgroundColor: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1, 0),
                                  child: GradientText(
                                    'MAT',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 90,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffFFFFFF),
                                    ),
                                    gradient: const LinearGradient(
                                        end: Alignment.bottomCenter,
                                        begin: Alignment.topCenter,
                                        colors: [
                                          Color(0x4dd3d3d3),
                                          Color(0xffffff),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      addVerticalSpace(10),
                      Material(
                        borderRadius: BorderRadius.circular(7),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7),
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.19,
                            decoration: BoxDecoration(
                              gradient: primaryGradientOnly,
                              borderRadius: BorderRadius.circular(7),
                              shape: BoxShape.rectangle,
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(-1, 1),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 14, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff81A2FF),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "CSE-1003",
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xbbffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Artificial \n"
                                        "Intelligence",
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Prof. Barathi . S',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xffFFFFFF),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 17),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "90%",
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 10, top: 10),
                                        width: MediaQuery.of(context).size.width * 0.8,
                                        height: MediaQuery.of(context).size.height * 0.01,
                                        child: const ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          child: LinearProgressIndicator(
                                            value: 0.9,
                                            // valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFD2929)),
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Color(0xff11DA00)),
                                            backgroundColor: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1, 0),
                                  child: GradientText(
                                    'CSE',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 90,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffFFFFFF),
                                    ),
                                    gradient: const LinearGradient(
                                        end: Alignment.bottomCenter,
                                        begin: Alignment.topCenter,
                                        colors: [
                                          Color(0x4dd3d3d3),
                                          Color(0xffffff),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      addVerticalSpace(10),
                      Material(
                        borderRadius: BorderRadius.circular(7),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7),
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.19,
                            decoration: BoxDecoration(
                              gradient: primaryGradientOnly,
                              borderRadius: BorderRadius.circular(7),
                              shape: BoxShape.rectangle,
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(-1, 1),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 14, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff81A2FF),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "MAT-1003",
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xbbffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Discrete \n"
                                        "Mathematics",
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Prof. Ram Mohan . D',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xffFFFFFF),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 17),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "84%",
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 10, top: 10),
                                        width: MediaQuery.of(context).size.width * 0.8,
                                        height: MediaQuery.of(context).size.height * 0.01,
                                        child: const ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          child: LinearProgressIndicator(
                                            value: 0.8,
                                            // valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFD2929)),
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Color(0xff11DA00)),
                                            backgroundColor: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1, 0),
                                  child: GradientText(
                                    'MAT',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 90,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffFFFFFF),
                                    ),
                                    gradient: const LinearGradient(
                                        end: Alignment.bottomCenter,
                                        begin: Alignment.topCenter,
                                        colors: [
                                          Color(0x4dd3d3d3),
                                          Color(0xffffff),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      addVerticalSpace(10),
                      Material(
                        borderRadius: BorderRadius.circular(7),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7),
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.19,
                            decoration: BoxDecoration(
                              gradient: primaryGradientOnly,
                              borderRadius: BorderRadius.circular(7),
                              shape: BoxShape.rectangle,
                            ),
                            child: Stack(
                              alignment: const AlignmentDirectional(-1, 1),
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 14, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.22,
                                        decoration: BoxDecoration(
                                            color: const Color(0xff81A2FF),
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "MAT-1003",
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xbbffffff),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Database \n"
                                        "Management",
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Prof. Sudhakar Ilango',
                                        style: SafeGoogleFont(
                                          'Poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xffFFFFFF),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 17),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "14%",
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 10, top: 10),
                                        width: MediaQuery.of(context).size.width * 0.8,
                                        height: MediaQuery.of(context).size.height * 0.01,
                                        child: const ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          child: LinearProgressIndicator(
                                            value: 0.04,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Color(0xffFD2929)),
                                            // valueColor: AlwaysStoppedAnimation<Color>(Color(0xff11DA00)),
                                            backgroundColor: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1, 0),
                                  child: GradientText(
                                    'MAT',
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 90,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffFFFFFF),
                                    ),
                                    gradient: const LinearGradient(
                                        end: Alignment.bottomCenter,
                                        begin: Alignment.topCenter,
                                        colors: [
                                          Color(0x4dd3d3d3),
                                          Color(0xffffff),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      addVerticalSpace(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          SizedBox(height: 5.0),
                        ],
                      )
                    ],
                  )),
            ],
          ))
        ],
      ),
    );
  }
}
