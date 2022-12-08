import 'dart:ui';

import 'package:flutter/material.dart';

import '../../utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xffF9F9F9),
        title:  Text('Oct 23rd,2022',  style: SafeGoogleFont (
          'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.8,
          color: const Color(0xd3002179),
        ),),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                border: Border.all(color: Colors.grey.withAlpha(40), width: 1)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black54)
            ),
          ),
        )
          ,
        actions: [
          // Navigate to the Search Screen
          Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                border: Border.all(color: Colors.grey.withAlpha(40), width: 1)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black54)
            ),
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // height: 20,
                      width: double.infinity,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18))
                      ),
                      child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(18, 18, 18, 18),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 400,
                              decoration:  BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(18))
                              ),
                              child: Stack(
                                children: [
                                  InkWell(
                                    child: Hero(
                                      tag: 'surfLesson',
                                      transitionOnUserGestures: true,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          'assets/images/home/slider.png',
                                          width: double.infinity,
                                          height: 400,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: AlignmentDirectional(0, 1),
                                    child: BlurSubWidget(),
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}

class BlurSubWidget extends StatelessWidget {
  const BlurSubWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        child: Align(
          alignment: const AlignmentDirectional(0, 1),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 12),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 6,
                  sigmaY: 8,
                ),
                child: Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x51666060)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0x30676565),
                        Color(0x75000000),
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x28000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Training Session',
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '\$200.00',
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Text(
                                  'Half Day Training',
                                ),
                              ),
                              Icon(
                                Icons.star_rounded,
                                size: 24,
                              ),
                              Text(
                                '5.0',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
