import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/customs/onTapScale.dart';

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
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTap(
                  onTap: () {},
                  child: Padding(
                    padding: carPaddings,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xfffefefe),
                          strokeAlign: StrokeAlign.outside,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            spreadRadius: -8,
                            blurRadius: 35,
                            color: Color.fromRGBO(0, 0, 0, 0.18),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)),
                                        child: Image.asset(
                                          'assets/images/icons/default_faculty_header.png',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.13,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: AlignmentDirectional(-0.9, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 70, 0, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 42,
                                          child: CircleAvatar(
                                            radius: 39,
                                            backgroundImage: AssetImage(
                                                "assets/images/home/faculty.jpg"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(9, 110, 0, 0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Dr. E. Ajith Jubilson',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff43434E),
                                              ),
                                            ),
                                            Text(
                                              'CSE2004',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xe6000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Specialization Areas: Software Agents, Artificial Intelligence, Machine Learning',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0x99000000),
                                    ),
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
                CustomTap(
                  onTap: () {},
                  child: Padding(
                    padding: carPaddings,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xfffefefe),
                          strokeAlign: StrokeAlign.outside,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            spreadRadius: -8,
                            blurRadius: 35,
                            color: Color.fromRGBO(0, 0, 0, 0.18),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)),
                                        child: Image.asset(
                                          'assets/images/icons/default_faculty_header.png',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.13,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: AlignmentDirectional(-0.9, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 70, 0, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 42,
                                          child: CircleAvatar(
                                            radius: 39,
                                            backgroundImage: AssetImage(
                                                "assets/images/home/faculty.jpg"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(9, 110, 0, 0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Dr. E. Ajith Jubilson',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff43434E),
                                              ),
                                            ),
                                            Text(
                                              'CSE2004',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xe6000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Specialization Areas: Software Agents, Artificial Intelligence, Machine Learning',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0x99000000),
                                    ),
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
                CustomTap(
                  onTap: () {},
                  child: Padding(
                    padding: carPaddings,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xfffefefe),
                          strokeAlign: StrokeAlign.outside,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            spreadRadius: -8,
                            blurRadius: 35,
                            color: Color.fromRGBO(0, 0, 0, 0.18),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)),
                                        child: Image.asset(
                                          'assets/images/icons/default_faculty_header.png',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.13,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: AlignmentDirectional(-0.9, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 70, 0, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 42,
                                          child: CircleAvatar(
                                            radius: 39,
                                            backgroundImage: AssetImage(
                                                "assets/images/home/faculty.jpg"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(9, 110, 0, 0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Dr. E. Ajith Jubilson',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff43434E),
                                              ),
                                            ),
                                            Text(
                                              'CSE2004',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xe6000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Specialization Areas: Software Agents, Artificial Intelligence, Machine Learning',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0x99000000),
                                    ),
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
                CustomTap(
                  onTap: () {},
                  child: Padding(
                    padding: carPaddings,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.width * 0.55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xfffefefe),
                          strokeAlign: StrokeAlign.outside,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 0),
                            spreadRadius: -8,
                            blurRadius: 35,
                            color: Color.fromRGBO(0, 0, 0, 0.18),
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            topLeft: Radius.circular(10)),
                                        child: Image.asset(
                                          'assets/images/icons/default_faculty_header.png',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.13,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: AlignmentDirectional(-0.9, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 70, 0, 0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 42,
                                          child: CircleAvatar(
                                            radius: 39,
                                            backgroundImage: AssetImage(
                                                "assets/images/home/faculty.jpg"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(9, 110, 0, 0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Dr. E. Ajith Jubilson',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff43434E),
                                              ),
                                            ),
                                            Text(
                                              'CSE2004',
                                              style: SafeGoogleFont(
                                                'Poppins',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                color: const Color(0xe6000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Specialization Areas: Software Agents, Artificial Intelligence, Machine Learning',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0x99000000),
                                    ),
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
              ],
            ),
          ),
        )
      ],
    );
  }
}
