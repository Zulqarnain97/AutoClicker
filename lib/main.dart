import 'package:flutter/material.dart';
import 'package:software_testing/home_screen.dart';
import 'package:software_testing/test_screen.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
