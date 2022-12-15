import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../customs/theme.dart';

class PromoView extends StatefulWidget {
  const PromoView({ Key? key}) : super(key: key);

  @override
  _PromoViewState createState() => _PromoViewState();
}

class _PromoViewState extends State<PromoView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white54,
                statusBarIconBrightness: Brightness.light, // For Android (dark icons)
                statusBarBrightness: Brightness.dark, // For iOS (dark icons)
              ),
              automaticallyImplyLeading: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.6,
              elevation: 0,
              // snap: true,
              floating: true,
              pinned: false,
              stretch: true,
              leading: FadeInDown(
                duration: Duration(milliseconds: 600),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
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
                  duration: Duration(milliseconds: 850),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      decoration: BoxDecoration(
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
                  stretchModes: [
                    StretchMode.zoomBackground,
                  ],
                  background: Hero(
                    transitionOnUserGestures: true,
                    tag: 'mainslider',
                    child: Image.asset(
                      'assets/images/home/slider.png',
                      fit: BoxFit.cover,),
                  )
              ),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(45),
                  child: Transform.translate(
                    offset: Offset(0, 1),
                    child: FadeInUp(
                      from: 80,
                      duration: Duration(milliseconds: 500),
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
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
                            )
                        ),
                      ),
                    ),
                  )
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
                  FadeInUp(
                    duration: Duration(milliseconds: 500),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Container(

                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          child: SingleChildScrollView(

                            child:  Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "GDC CLUB",
                                          style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold,),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                          "CLUB",
                                          style: TextStyle(color: Colors.orange.shade400, fontSize: 14,),),
                                      ],
                                    ),
                                    Text("\$ ",
                                      style: TextStyle(color: Colors.black, fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,),
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
                                          " These lightweight, pleat front pants feature a flattering high waist and loose, straight leg"


                                  ,
                                  style: TextStyle(height: 1.5, color: Colors.grey.shade800, fontSize: 15,),
                                ),
                                SizedBox(height: 20,),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  height: 50,
                                  elevation: 0,
                                  splashColor: Colors.blueAccent[700],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  color: primaryColor,
                                  child: Center(
                                    child: Text("More Details", style: TextStyle(color: Colors.white, fontSize: 18),),
                                  ),
                                ),

                              ],
                            ),

                          )
                      ),
                    ),
                  )
                ])
            ),
          ]
      ),
    );
  }
}