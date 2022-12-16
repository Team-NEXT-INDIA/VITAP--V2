import 'package:flutter/material.dart';
import 'package:myapp/screens/OnBoarding/onBoarding.dart';
import 'package:myapp/utils/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: Onboarding(),
    );
  }
}
