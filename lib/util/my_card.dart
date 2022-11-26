import 'package:flutter/material.dart';

import '../Global_var/const_var.dart';

class MyCard extends StatefulWidget {
  double? height;
  double? width;
  Widget? child;
  BoxDecoration? decoration;

  bool isStroke = false;

  Color? color;

  LinearGradient? gradient;

  MyCard({
    super.key,
    this.height,
    this.width,
    this.child,
    this.decoration,
    this.color,
  });

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
        gradient: widget.gradient,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            kBorderRadNum,
          ),
        ),
        border: Border.all(
          width: widget.isStroke ? kUserBorderThickness : 0,
          color: Colors.white,
        ),
      ),
      child: widget.child,
    );
  }
}
