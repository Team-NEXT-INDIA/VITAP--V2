import 'package:flutter/material.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../../utils/utils.dart';

class upcomingEventsBuild extends StatelessWidget {
  const upcomingEventsBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      "Upcoming Events",
                    style: SafeGoogleFont(
                      'Open Sans',
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff43434E),
                    ),
                  ),
                  Text(
                    "(7)",
                    style: SafeGoogleFont(
                      'Open Sans',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffbebdc5),
                    ),
                  ),
                ],
              ),
              InkWell(
                  borderRadius: BorderRadius.circular(6),
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6)
                  ),
                  margin: EdgeInsets.all(10),
                  child: Text(
                      "See All",
                    style: SafeGoogleFont(
                      'Open Sans',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.5 ,
                      color: const Color(0xff3D31C4),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Material(
                    color: Color(0xfffff6f6),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0, top: 10),
                              child: Text(
                                "Internal",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff838383),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(7),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xfff33d52)
                                  ),
                                ),
                                Text(
                                  "34 Days Left",
                                  style: SafeGoogleFont(
                                    'Open Sans',
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff43434E),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "New Year Celebrations",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "Official International Cultural fest of VITAP...",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Material(
                   color: Color(0xffDAFFEC),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(left:10.0, top: 10),
                            child: Text(
                                "Internal",
                              style: SafeGoogleFont(
                                'Open Sans',
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff838383),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(7),
                                width: 10,
                                  height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xff2ED373)
                                ),
                              ),
                              Text(
                                "3 Days Left",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff43434E),
                                ),
                              ),

                            ],
                          ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "VITOPIA 2023",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "Official International Cultural fest of VITAP...",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                        ],
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Material(
                    color: Color(0xffDAFFEC),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0, top: 10),
                              child: Text(
                                "Internal",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff838383),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(7),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xff2ED373)
                                  ),
                                ),
                                Text(
                                  "34 Days Left",
                                  style: SafeGoogleFont(
                                    'Open Sans',
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff43434E),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "VITOPIA 2023",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "Official International Cultural fest of VITAP...",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Material(
                    color: Color(0xffDAFFEC),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0, top: 10),
                              child: Text(
                                "Internal",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff838383),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(7),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xff2ED373)
                                  ),
                                ),
                                Text(
                                  "34 Days Left",
                                  style: SafeGoogleFont(
                                    'Open Sans',
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff43434E),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "VITOPIA 2023",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "Official International Cultural fest of VITAP...",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Material(
                    color: Color(0xffDAFFEC),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0, top: 10),
                              child: Text(
                                "Internal",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff838383),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(7),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xff2ED373)
                                  ),
                                ),
                                Text(
                                  "34 Days Left",
                                  style: SafeGoogleFont(
                                    'Open Sans',
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff43434E),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "VITOPIA 2023",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "Official International Cultural fest of VITAP...",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Material(
                    color: Color(0xffDAFFEC),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:10.0, top: 10),
                              child: Text(
                                "Internal",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff838383),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(7),
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color(0xff2ED373)
                                  ),
                                ),
                                Text(
                                  "34 Days Left",
                                  style: SafeGoogleFont(
                                    'Open Sans',
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff43434E),
                                  ),
                                ),

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "VITOPIA 2023",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Text(
                                "Official International Cultural fest of VITAP...",
                                style: SafeGoogleFont(
                                  'Open Sans',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff43434E),
                                ),
                              ),
                            ),
                          ],
                        ),
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
