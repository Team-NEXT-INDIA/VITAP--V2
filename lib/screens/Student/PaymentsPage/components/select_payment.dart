import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/customs/onTapScale.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../../utils/utils.dart';

class SelectPaymentType extends StatefulWidget {
  const SelectPaymentType({Key? key}) : super(key: key);

  @override
  State<SelectPaymentType> createState() => _SelectPaymentTypeState();
}

class _SelectPaymentTypeState extends State<SelectPaymentType> {
  dynamic _selectedIndex = {};

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsetsDirectional.only(
        start: 20,
        end: 20,
        bottom: 30,
        top: 8,
      ),
      child: Wrap(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 60,
                  height: 4,
                  decoration: BoxDecoration(
                    color: CupertinoColors.lightBackgroundGray,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                addVerticalSpace(15),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Payment methods",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffE1E1E1),
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.black87,
                          size: 15,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(15),
                CustomTap(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        color: Color(0xffF9F8F8),
                        borderRadius: BorderRadius.circular(14)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Razorpay",
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Net Banking, UPI (Web Collect & UPI Intent), Online Wallets",
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                addVerticalSpace(10),
                CustomTap(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        color: Color(0xffF9F8F8),
                        borderRadius: BorderRadius.circular(14)),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PAYU",
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "International Payments",
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
        ],
      ),
    );
  }
}
