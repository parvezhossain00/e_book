
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';

class TwoSideRoundButton extends StatelessWidget {
  final  String text;
  final double radius;
  final VoidCallback press;

  const TwoSideRoundButton({
    super.key, required this.text,
    this.radius = 29,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: pBlackColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius))
        ),
        child: Text(text,style: const TextStyle(
            color: Colors.white
        ),),
      ),
    );
  }
}
