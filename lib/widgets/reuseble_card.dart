import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  final Widget child;
  final double top;
  final double w, h, l, r;
  final Color color;
  ReusableCard(
      {required this.child,
      required this.top,
      required this.w,
      required this.h,
      required this.l,
      required this.r,
      required this.color,});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      color: color,
      margin: EdgeInsets.only(
        right: r,
        left: l,
        top: top,
      ),
      width: w,
      height: h,
    );
  }
}
