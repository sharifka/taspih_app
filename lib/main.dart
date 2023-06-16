import 'package:flutter/material.dart';

import 'screens/home.dart';
// this is the starting point of the app.
void main() {
  runApp(TasbihApp());
}

class TasbihApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Home screen
      home: HomeScreen(),
    );
  }
}

