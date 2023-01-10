import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class CompletedPayments extends StatelessWidget {
  const CompletedPayments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Completed Payments',
        style: SafeGoogleFont(
          'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color(0xff232323),
        ),
      ),
    );
  }
}
