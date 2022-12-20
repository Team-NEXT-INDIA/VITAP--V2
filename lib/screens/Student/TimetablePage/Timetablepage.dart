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
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            // show and hide SliverAppBar Title
            automaticallyImplyLeading: false,
            pinned: true,
            snap: true,
            centerTitle: false,
            floating: true,
            expandedHeight: 90,
            backgroundColor: scaffoldBackground,
            forceElevated: true,
            surfaceTintColor: scaffoldBackground,
            flexibleSpace: FlexibleSpaceBar(
              title: Center(
                child: Text(
                  'Attendance',
                  style: SafeGoogleFont(
                    'Open Sans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: titlePrimary,
                  ),
                ),
              ),
              titlePadding: EdgeInsetsDirectional.only(top: 50),
              stretchModes: [StretchMode.blurBackground],
            ),
          ),
          //3
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Filter by",
                          style: SafeGoogleFont(
                            'Open Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: titlePrimary,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 5.0),
                            Wrap(
                              spacing: 5.0,
                              children: ExerciseFilter.values
                                  .map((ExerciseFilter exercise) {
                                return FilterChip(
                                  backgroundColor: Color(0xffDEDFE1),
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.19,
                                  decoration: BoxDecoration(
                                    gradient: primaryGradientOnly,
                                    borderRadius: BorderRadius.circular(7),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Stack(
                                    alignment:
                                        const AlignmentDirectional(-1, 1),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 14, left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.02,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.22,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff81A2FF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "MAT-1003",
                                                    style: SafeGoogleFont(
                                                      'Open Sans',
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
                                                'Open Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'Prof. Vemula Rama krishna',
                                              style: SafeGoogleFont(
                                                'Open Sans',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 0),
                                        child: GradientText(
                                          'MAT',
                                          style: SafeGoogleFont(
                                            'Open Sans',
                                            fontSize: 90,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffFFFFFF),
                                          ),
                                          gradient: LinearGradient(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.19,
                                  decoration: BoxDecoration(
                                    gradient: primaryGradientOnly,
                                    borderRadius: BorderRadius.circular(7),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Stack(
                                    alignment:
                                    const AlignmentDirectional(-1, 1),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 14, left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.22,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff81A2FF),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      50)),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "MAT-1003",
                                                    style: SafeGoogleFont(
                                                      'Open Sans',
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
                                                'Open Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'Prof. Vemula Rama krishna',
                                              style: SafeGoogleFont(
                                                'Open Sans',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 0),
                                        child: GradientText(
                                          'MAT',
                                          style: SafeGoogleFont(
                                            'Open Sans',
                                            fontSize: 90,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffFFFFFF),
                                          ),
                                          gradient: LinearGradient(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.19,
                                  decoration: BoxDecoration(
                                    gradient: primaryGradientOnly,
                                    borderRadius: BorderRadius.circular(7),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Stack(
                                    alignment:
                                    const AlignmentDirectional(-1, 1),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 14, left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.22,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff81A2FF),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      50)),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "MAT-1003",
                                                    style: SafeGoogleFont(
                                                      'Open Sans',
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
                                                'Open Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'Prof. Vemula Rama krishna',
                                              style: SafeGoogleFont(
                                                'Open Sans',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 0),
                                        child: GradientText(
                                          'MAT',
                                          style: SafeGoogleFont(
                                            'Open Sans',
                                            fontSize: 90,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffFFFFFF),
                                          ),
                                          gradient: LinearGradient(
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
                                  height:
                                  MediaQuery.of(context).size.height * 0.19,
                                  decoration: BoxDecoration(
                                    gradient: primaryGradientOnly,
                                    borderRadius: BorderRadius.circular(7),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Stack(
                                    alignment:
                                    const AlignmentDirectional(-1, 1),
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 14, left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                                  0.02,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                                  0.22,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff81A2FF),
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      50)),
                                              child:  Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "MAT-1003",
                                                    style: SafeGoogleFont(
                                                      'Open Sans',
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
                                                'Open Sans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'Prof. Vemula Rama krishna',
                                              style: SafeGoogleFont(
                                                'Open Sans',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(1, 0),
                                        child: GradientText(
                                          'MAT',
                                          style: SafeGoogleFont(
                                            'Open Sans',
                                            fontSize: 90,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffFFFFFF),
                                          ),
                                          gradient: LinearGradient(
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
                          ],
                        )
                      ],
                    )),
              ],
            )
          ])),
        ],
      ),
    );
  }
}
