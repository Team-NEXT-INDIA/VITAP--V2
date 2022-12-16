import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../customs/theme.dart';

class PromoView extends StatefulWidget {
  const PromoView({Key? key}) : super(key: key);

  @override
  _PromoViewState createState() => _PromoViewState();
}

class _PromoViewState extends State<PromoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverAppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            // For Android (dark icons)
            statusBarBrightness: Brightness.dark, // For iOS (dark icons)
          ),
          automaticallyImplyLeading: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.6,
          elevation: 0,
          // snap: true,
          floating: true,
          pinned: true,
          stretch: true,
          leading: FadeInDown(
            duration: const Duration(milliseconds: 600),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: iconPrimary,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            FadeInDown(
              duration: const Duration(milliseconds: 850),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.ios_share,
                      color: iconPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ],
          backgroundColor: Colors.white,
          flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              stretchModes: const [
                StretchMode.zoomBackground,
              ],
              background: Hero(
                transitionOnUserGestures: true,
                tag: 'mainslider',
                child: Image.asset(
                  'assets/images/home/slider.png',
                  fit: BoxFit.cover,
                ),
              )),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(45),
              child: Transform.translate(
                offset: const Offset(0, 1),
                child: FadeInUp(
                  from: 80,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                        child: Container(
                      width: 50,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
                  ),
                ),
              )),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          FadeInUp(
            duration: const Duration(milliseconds: 500),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "GDC CLUB",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "CLUB",
                                  style: TextStyle(
                                    color: Colors.orange.shade400,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "\$ ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Take a break from jeans with the parker long straight pant."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight leg"
                          "Take a break from jeans with the parker long straight pant."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight leg"
                          "Take a break from jeans with the parker long straight pant."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight leg"
                          "Take a break from jeans with the parker long straight pant."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight legs."
                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight leg",
                          style: TextStyle(
                            height: 1.5,
                            color: Colors.grey.shade800,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          height: 50,
                          elevation: 0,
                          splashColor: Colors.blueAccent[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: primaryColor,
                          child: const Center(
                            child: Text(
                              "More Details",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          )
        ])),
      ]),
    );
  }
}
