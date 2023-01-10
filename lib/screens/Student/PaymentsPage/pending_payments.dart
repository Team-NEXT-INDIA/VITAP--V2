import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/screens/Student/PaymentsPage/components/select_payment.dart';
import 'package:myapp/screens/Student/PaymentsPage/details_page.dart';
import 'package:myapp/utils/widget_functions.dart';

import '../../../customs/onTapScale.dart';
import '../../../utils/utils.dart';

class PendingPayments extends StatelessWidget {
  const PendingPayments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paymentbox = BoxDecoration(
      boxShadow: const [
        BoxShadow(
          offset: Offset(3, 2),
          spreadRadius: -4,
          blurRadius: 50,
          color: Color(0x07000000),
          // color: Color.fromRGBO(0, 0, 0, 0.22),
        ),
      ],
      // color: Color(0xfff8f8fe),
      color: Color(0xffFAFAFC),
      border: Border.all(
        // color: Color(0xfffefefe),
        color: Colors.white,
        strokeAlign: StrokeAlign.outside,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(13),
    );
    return SingleChildScrollView(
      child: Column(children: [
        addVerticalSpace(20),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: paymentbox,
          child: Padding(
            padding: const EdgeInsets.all(19),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Laundry Wash Charges",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff131313),
                  ),
                ),
                Text(
                  "(FALL SEM 2022-23)",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff131313),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total : ",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff868686),
                      ),
                    ),
                    Text(
                      "₹4500.00",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.activeGreen,
                      ),
                    ),
                  ],
                ),
                Text(
                  "*Valid till 22nd Jan",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff868686),
                  ),
                ),
                Row(
                  children: [
                    CustomTap(
                      onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute(
                              builder: (context) => payment_details_page())),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border:
                                Border.all(width: 1, color: Color(0x41393939)),
                            borderRadius: BorderRadius.circular(6)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "View Details",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomTap(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(25),
                                topStart: Radius.circular(25),
                              ),
                            ),
                            builder: (context) => SelectPaymentType());
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            color: CupertinoColors.label,
                            borderRadius: BorderRadius.circular(6)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                FontAwesomeIcons.solidCreditCard,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Text(
                              "Pay Now",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Color(0xffFEFEFE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        addVerticalSpace(15),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: paymentbox,
          child: Padding(
            padding: const EdgeInsets.all(19),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Laundry Wash Charges",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff131313),
                  ),
                ),
                Text(
                  "(FALL SEM 2022-23)",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff131313),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total : ",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff868686),
                      ),
                    ),
                    Text(
                      "₹4500.00",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.activeGreen,
                      ),
                    ),
                  ],
                ),
                Text(
                  "*Valid till 22nd Jan",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff868686),
                  ),
                ),
                Row(
                  children: [
                    CustomTap(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border:
                                Border.all(width: 1, color: Color(0x41393939)),
                            borderRadius: BorderRadius.circular(6)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "View Details",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomTap(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            color: CupertinoColors.label,
                            borderRadius: BorderRadius.circular(6)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                FontAwesomeIcons.solidCreditCard,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Text(
                              "Pay Now",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Color(0xffFEFEFE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        addVerticalSpace(15),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: paymentbox,
          child: Padding(
            padding: const EdgeInsets.all(19),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Laundry Wash Charges",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff131313),
                  ),
                ),
                Text(
                  "(FALL SEM 2022-23)",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff131313),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total : ",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff868686),
                      ),
                    ),
                    Text(
                      "₹4500.00",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.activeGreen,
                      ),
                    ),
                  ],
                ),
                Text(
                  "*Valid till 22nd Jan",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff868686),
                  ),
                ),
                Row(
                  children: [
                    CustomTap(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border:
                                Border.all(width: 1, color: Color(0x41393939)),
                            borderRadius: BorderRadius.circular(6)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "View Details",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomTap(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            color: CupertinoColors.label,
                            borderRadius: BorderRadius.circular(6)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                FontAwesomeIcons.solidCreditCard,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Text(
                              "Pay Now",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Color(0xffFEFEFE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        addVerticalSpace(15),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: paymentbox,
          child: Padding(
            padding: const EdgeInsets.all(19),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Laundry Wash Charges",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff131313),
                  ),
                ),
                Text(
                  "(FALL SEM 2022-23)",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff131313),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Total : ",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff868686),
                      ),
                    ),
                    Text(
                      "₹4500.00",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.activeGreen,
                      ),
                    ),
                  ],
                ),
                Text(
                  "*Valid till 22nd Jan",
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff868686),
                  ),
                ),
                Row(
                  children: [
                    CustomTap(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border:
                                Border.all(width: 1, color: Color(0x41393939)),
                            borderRadius: BorderRadius.circular(6)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "View Details",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomTap(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            color: CupertinoColors.label,
                            borderRadius: BorderRadius.circular(6)),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                FontAwesomeIcons.solidCreditCard,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                            Text(
                              "Pay Now",
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                                color: Color(0xffFEFEFE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        addVerticalSpace(20),
      ]),
    );
  }
}
