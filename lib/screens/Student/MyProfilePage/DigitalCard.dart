import 'package:barcode_widget/barcode_widget.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/customs/theme.dart';

import '../../../utils/utils.dart';

class DigitalCard extends StatefulWidget {
  DigitalCard({Key? key}) : super(key: key);

  @override
  State<DigitalCard> createState() => _DigitalCardState();
}

class _DigitalCardState extends State<DigitalCard> {
  @override
  Widget build(BuildContext context) {
    var data2 = '21BCE7615';
    return Scaffold(
      backgroundColor: scaffoldBackground2,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFF002C64),
          statusBarIconBrightness: Brightness.light,
          // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
        title: Text(
          "Digital ID",
          style: SafeGoogleFont('Poppins',
              fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
        ),
        // backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            MaterialBanner(
                backgroundColor: Colors.blueGrey,
                content: Text(
                  "Tap on ID Card to flip Back Side",
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'DISMISS',
                        style: TextStyle(color: Colors.white70),
                      ))
                ]),
            FlipCard(
              fill: Fill
                  .fillBack, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL, // default
              front: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35, 35, 35, 35),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.65,
                          child: Stack(
                            alignment: AlignmentDirectional(0, 0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.23, -1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      14, 14, 14, 14),
                                  child: Image.network(
                                    'https://i.ibb.co/2NGy6dT/logo-width.png',
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height *
                                        0.14,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.43),
                                child: Text(
                                  'Samuel Philip',
                                  style: SafeGoogleFont('Poppins',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.5),
                                child: Text(
                                  '21BCE7615',
                                  style: SafeGoogleFont('Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0.58),
                                child: Text(
                                  'BCE SCOPE',
                                  style: SafeGoogleFont('Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF98A003),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'HOSTELLER',
                                        style: SafeGoogleFont('Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height:
                                      MediaQuery.of(context).size.height * 0.23,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(1),
                                    child: Image.network(
                                      'https://picsum.photos/seed/429/600',
                                      width: 100,
                                      height: 100,
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
              ),
              back: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35, 35, 35, 35),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  decoration: BoxDecoration(
                    color: Color(0xfffeffff),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Official Address:",
                          style: SafeGoogleFont('Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        Text(
                          "VIT-AP University, G-30, Inavolu, Beside AP Secretariat Amaravati, Andhra Pradesh 522237, India, Ph No: 0863 2370444",
                          style: SafeGoogleFont('Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        Text(
                          "Residential Address:",
                          style: SafeGoogleFont('Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        Text(
                          "2-217/1,RUAH,READSPET,ANDHRA PRADESH 517001",
                          style: SafeGoogleFont('Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        Text(
                          "Emergency contact no:",
                          style: SafeGoogleFont('Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        Text(
                          "+91 7075 938131",
                          style: SafeGoogleFont('Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: BarcodeWidget(
                            barcode: Barcode.code128(),
                            data: data2,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Center(
                          child: Text(
                            "Website: www.vitap.ac.in",
                            style: SafeGoogleFont('Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.12,
              child: BarcodeWidget(
                barcode: Barcode.code128(),
                data: data2,
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
