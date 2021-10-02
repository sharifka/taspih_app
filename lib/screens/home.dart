import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tasbih_app/constants.dart';
import 'package:tasbih_app/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  int total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TasbihApp"),
        centerTitle: true,
        backgroundColor: KappbarandButtonsColour,
      ),
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Text(
              "Prayers Counter",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ReusableCard(
            child: Text(
              "$count",
              style: TextStyle(
                color: KappbarandButtonsColour,
                fontSize: 70,
                // backgroundColor: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            top: 30,
            h: 80,
            w: 2000,
            r: 10,
            l: 10,
            color: KCounterbarColour,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              RoundButton(
                iconData: Icons.add,
                onPressed: () {
                  setState(() {
                    count++;
                    total++;
                  });
                },
              ),
              const SizedBox(width: 8),
              RoundButton(
                iconData: Icons.refresh,
                onPressed: () {
                  setState(() {
                    count *= 0;
                  });
                },
              ),
            ],
          ),
          ReusableCard(
            child: Text(
              "Total prayers: " + total.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 35,
              ),
            ),
            top: 98,
            w: 2000,
            h: 80,
            r: 0,
            l: 0,
            color: kBottmbarColour,
          ),
        ],
      ),
    );
  }
}
