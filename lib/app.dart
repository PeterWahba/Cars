import 'package:cars/screens/edit_car.dart';
import 'package:cars/screens/landing_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LandingPage(),
      ),
    );
  }
}
