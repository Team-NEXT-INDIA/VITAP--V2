import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../../utils/utils.dart';

class MyFacultyBuild extends StatelessWidget {
  const MyFacultyBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var carPaddings = const EdgeInsetsDirectional.fromSTEB(9, 16, 9, 16);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Your Faculties",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff43434E),
                    ),
                  ),
                  Text(
                    "(4)",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffbebdc5),
                    ),
                  ),
                ],
              ),
              InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: () {},
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  margin: const EdgeInsets.all(10),
                  child: Text(
                    "View",
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      color: const Color(0xff3D31C4),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        CarouselSlider(
          items: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xfffefefe),
                      strokeAlign: StrokeAlign.outside,
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 0),
                        spreadRadius: -8,
                        blurRadius: 35,
                        color: Color.fromRGBO(0, 0, 0, 0.18),
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: CupertinoColors.secondarySystemBackground),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.36,
                      child: Stack(
                        alignment: const AlignmentDirectional(0, 1),
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, -1),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  color: Colors.white60),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Image.asset(
                                  'assets/images/icons/default_faculty_header.png',
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.width * 1,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 0, 24, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.20,
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      decoration: const BoxDecoration(
                                        color: Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsetsDirectional.all(4),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Image.asset(
                                              "assets/images/home/faculty.jpg",
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'AB-2 G03',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: CupertinoColors.label,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                      child: Text(
                        'Dr. E. Ajith Jubilson',
                        style: SafeGoogleFont("Poppins",
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                      child: Text(
                        'Specialization Areas: Software Agents, Artificial Intelligence, Machine Learning',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0x99000000),
                        ),
                      ),
                    ),
                    addVerticalSpace(15),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xfffefefe),
                      strokeAlign: StrokeAlign.outside,
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 0),
                        spreadRadius: -8,
                        blurRadius: 35,
                        color: Color.fromRGBO(0, 0, 0, 0.18),
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: CupertinoColors.secondarySystemBackground),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.36,
                      child: Stack(
                        alignment: const AlignmentDirectional(0, 1),
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, -1),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  color: Colors.white60),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Image.asset(
                                  'assets/images/icons/default_faculty_header.png',
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.width * 1,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 0, 24, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.20,
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      decoration: const BoxDecoration(
                                        color: Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsetsDirectional.all(4),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Image.asset(
                                              "assets/images/home/faculty.jpg",
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'AB-2 G03',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: CupertinoColors.label,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                      child: Text(
                        'Dr. E. Ajith Jubilson',
                        style: SafeGoogleFont("Poppins",
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                      child: Text(
                        'Specialization Areas: Software Agents, Artificial Intelligence, Machine Learning',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0x99000000),
                        ),
                      ),
                    ),
                    addVerticalSpace(15),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xfffefefe),
                      strokeAlign: StrokeAlign.outside,
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 0),
                        spreadRadius: -8,
                        blurRadius: 35,
                        color: Color.fromRGBO(0, 0, 0, 0.18),
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    color: CupertinoColors.secondarySystemBackground),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.36,
                      child: Stack(
                        alignment: const AlignmentDirectional(0, 1),
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, -1),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.25,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  color: Colors.white60),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Image.asset(
                                  'assets/images/icons/default_faculty_header.png',
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.width * 1,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16, 0, 24, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 12),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.20,
                                      width: MediaQuery.of(context).size.width *
                                          0.20,
                                      decoration: const BoxDecoration(
                                        color: Colors.white70,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsetsDirectional.all(4),
                                        child: Container(
                                          width: 80,
                                          height: 80,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Image.asset(
                                              "assets/images/home/faculty.jpg",
                                              width: 60,
                                              height: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'AB-2 G03',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: CupertinoColors.label,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 8, 0, 0),
                      child: Text(
                        'Dr. E. Ajith Jubilson',
                        style: SafeGoogleFont("Poppins",
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                      child: Text(
                        'Specialization Areas: Software Agents, Artificial Intelligence, Machine Learning',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color(0x99000000),
                        ),
                      ),
                    ),
                    addVerticalSpace(15),
                  ],
                ),
              ),
            ),
          ],
          options: CarouselOptions(
            enableInfiniteScroll: false,
            disableCenter: false,
            pageSnapping: true,
            height: MediaQuery.of(context).size.width * 0.65,
            autoPlay: false,
            enlargeCenterPage: false,
            viewportFraction: 0.89,
            padEnds: false,
            initialPage: 0,
          ),
        ),
      ],
    );
  }
}
