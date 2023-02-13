import 'package:flutter/material.dart';

import 'screens/home.dart';

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

