import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/screens/Student/PaymentsPage/pending_payments.dart';

import '../../../customs/theme.dart';
import '../../../utils/utils.dart';
import 'completed_payments.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: scaffoldBackground,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: scaffoldBackground,
          bottom: TabBar(
            labelColor: Color(0xff174EE4),
            labelStyle: SafeGoogleFont(
              'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xff232323),
            ),
            unselectedLabelColor: Color(0xffC2C2C2),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(
                text: "Pending (05)",
              ),
              Tab(
                text: "Receipts (0)",
              ),
            ],
          ),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(false),
            color: const Color(0xff161616),
            icon: const Icon(
              FontAwesomeIcons.chevronLeft,
            ),
          ),
          title: Text(
            'Payments',
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0xff232323),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            PendingPayments(),
            CompletedPayments(),
          ],
        ),
      ),
    );
  }
}
