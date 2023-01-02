import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/customs/onTapScale.dart';

import '../../utils/utils.dart';

class StreamCards extends StatelessWidget {
  final String title;
  final String subtitle;
  final String type;
  final String image;
  final Color typeColor;
  const StreamCards(
      {Key? key,
      required this.image,
      required this.type,
      required this.title,
      required this.subtitle,
      required this.typeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      child: CustomTap(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0x10000000),
              offset: Offset(0, 20),
              blurRadius: 30,
              spreadRadius: -5,
            ),
          ]),
          width: MediaQuery.of(context).size.width * 0.38,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(1, 0, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.38,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Image.network(
                      image,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.022,
                          decoration: BoxDecoration(
                            color: typeColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                type,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: new LinearGradient(
                          end: const Alignment(0.0, -1),
                          begin: const Alignment(0.0, 0.4),
                          colors: <Color>[
                            const Color(0x8A000000),
                            Colors.black12.withOpacity(0.0)
                          ],
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 1, 0, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    overflow: TextOverflow.ellipsis,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    subtitle,
                                    overflow: TextOverflow.ellipsis,
                                    style: SafeGoogleFont(
                                      'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
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
            ],
          ),
        ),
      ),
    );
  }
}
