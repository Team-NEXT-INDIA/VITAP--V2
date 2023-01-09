import 'package:flutter/material.dart';
import 'package:myapp/screens/OnBoarding/onBoarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  MaterialColor primaryPalete = MaterialColor(
    Color.fromRGBO(56, 107, 246, 1).value,
    <int, Color>{
      50: Color.fromRGBO(56, 107, 246, 0.1),
      100: Color.fromRGBO(56, 107, 246, 0.2),
      200: Color.fromRGBO(56, 107, 246, 0.3),
      300: Color.fromRGBO(56, 107, 246, 0.4),
      400: Color.fromRGBO(56, 107, 246, 0.5),
      500: Color.fromRGBO(56, 107, 246, 0.6),
      600: Color.fromRGBO(56, 107, 246, 0.7),
      700: Color.fromRGBO(56, 107, 246, 0.8),
      800: Color.fromRGBO(56, 107, 246, 0.9),
      900: Color.fromRGBO(56, 107, 246, 1),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: primaryPalete,
      ),
      home: Onboarding(),
    );
  }
}
