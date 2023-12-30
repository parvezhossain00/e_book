import 'package:e_book_app/view/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RoundedButton extends StatelessWidget {

  final String text;
  final VoidCallback press;
  final double verticalPadding;
  final double fontSize;

  const RoundedButton({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.verticalPadding = 16,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: press,

      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(vertical: verticalPadding,
            horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),

            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 30,
                  color: Color(0xFF666666).withOpacity(.11)
              )
            ]
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}