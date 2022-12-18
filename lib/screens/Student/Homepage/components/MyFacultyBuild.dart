import 'package:flutter/material.dart';
import '../../../../utils/utils.dart';

class myFacultyBuild extends StatelessWidget {
  const myFacultyBuild({Key? key}) : super(key: key);

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
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6)
                  ),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "View",
                    style: SafeGoogleFont(
                      'Poppins',
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
                    color: Color(0xfff4f3ff),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:2.0, top: 10),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    strokeAlign: StrokeAlign.outside,
                                    width: 4,
                                    color: Colors.white60
                                  ),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/home/faculty.jpg'
                                      ),
                                      fit: BoxFit.contain
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Text(
                                    "Dr. E. Ajith Jubilson",
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff43434E),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Text(
                                    "AB-2 | G02",
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff43434E),
                                    ),
                                  ),
                                ),
                              ],
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
                    color: Color(0xfff4faf9),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:2.0, top: 10),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      strokeAlign: StrokeAlign.outside,
                                      width: 4,
                                      color: Colors.white60
                                  ),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/home/sibi.jpg'
                                      ),
                                      fit: BoxFit.contain
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Text(
                                    "Dr. Sibi Chakkaravarthy",
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff43434E),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Text(
                                    "CB | 212",
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff43434E),
                                    ),
                                  ),
                                ),
                              ],
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
                    color: Color(0xfff5f4fa),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:2.0, top: 10),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      strokeAlign: StrokeAlign.outside,
                                      width: 4,
                                      color: Colors.white60
                                  ),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/home/faculty.jpg'
                                      ),
                                      fit: BoxFit.contain
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Text(
                                    "Dr. E. Ajith Jubilson",
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff43434E),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Text(
                                    "AB-2 | G02",
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff43434E),
                                    ),
                                  ),
                                ),
                              ],
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
                    color: Color(0xfffaf4f5),
                    borderRadius: BorderRadius.circular(17),
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(17),
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),

                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:2.0, top: 10),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      strokeAlign: StrokeAlign.outside,
                                      width: 4,
                                      color: Colors.white60
                                  ),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/home/faculty.jpg'
                                      ),
                                      fit: BoxFit.contain
                                  ),
                                ),
                              ),
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Text(
                                    "Dr. E. Ajith Jubilson",
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff43434E),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7),
                                  child: Text(
                                    "AB-2 | G02",
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff43434E),
                                    ),
                                  ),
                                ),
                              ],
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
