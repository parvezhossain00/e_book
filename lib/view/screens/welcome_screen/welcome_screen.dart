import 'package:e_book_app/view/screens/home_screen/home_screen.dart';
import 'package:e_book_app/view/screens/welcome_screen/widget/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/images_string.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(PImages.containerImage),
                fit: BoxFit.fill
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(text: TextSpan(
                style: Theme.of(context).textTheme.displayLarge,
                children: const [
                  TextSpan(
                    text: "flamin",

                  ),TextSpan(
                      text: "go.",style: TextStyle(fontWeight: FontWeight.bold)
                  )
                ]
            )),
            SizedBox(
              width: MediaQuery.of(context).size.width*.6,
              child:  RoundedButton(
                text: "Start reading",
                fontSize: 20,
                press: (){
                  Get.to(HomeScreen());
                },


              ),
            )
          ],

        ),
      ),

    );
  }
}
