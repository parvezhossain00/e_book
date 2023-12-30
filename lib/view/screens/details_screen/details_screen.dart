import 'package:e_book_app/constants/colors.dart';
import 'package:e_book_app/view/screens/details_screen/widget/book_info.dart';
import 'package:e_book_app/view/screens/details_screen/widget/chapter_card.dart';
import 'package:e_book_app/view/screens/home_screen/reading_list_card/widget/book_rating.dart';
import 'package:e_book_app/view/screens/welcome_screen/widget/rounded_button.dart';
import 'package:flutter/material.dart';

import '../../../constants/images_string.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(PImages.bgImage), fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .03,
                        ),
                        const BookInfo()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: "Money",
                        chapterNumber: 1,
                        tag: "life is about change",
                        press: (){},

                      ),
                      ChapterCard(
                        name: "Power",
                        chapterNumber: 2,
                        tag: "EveryThing loves power",
                        press: (){},

                      ),
                      ChapterCard(
                        name: "Influence",
                        chapterNumber: 3,
                        tag: "Influence easilt like never before",
                        press: (){},

                      ),
                      ChapterCard(
                        name: "Win",
                        chapterNumber: 4,
                        tag: "Winner is the matter",
                        press: (){},

                      ),
                      const SizedBox(height:10 ,)

                    ],
                  ),
                ),

              ],
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(text: TextSpan(
                  style: Theme.of(context).textTheme.displaySmall,
                  children: const [
                    TextSpan(
                      text: "You might also "
                    ),TextSpan(
                      text: "like...",style: TextStyle(fontWeight: FontWeight.bold)
                    )
                  ]
                )),const SizedBox(height: 20,),
                Stack(
                  children: [
                    Container(
                      height: 180,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(left: 24,top: 24,
                          right: 150),
                      height: 160,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: const Color(0xFFFFF8F9)
                      ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(text: const TextSpan(
                                style:TextStyle(color: pBlackColor),
                                children: [
                                  TextSpan(
                                    text: "How To Win \nFriends & Influence \n",
                                    style: TextStyle(
                                      fontSize: 20
                                    )
                                  ),
                                  TextSpan(
                                    text: "Gary Venchuk",
                                    style: TextStyle(color: pLightBlackColor)
                                  )
                                ]
                              )),
                              Row(
                                children: [
                                  const BookRating(score: 4.9),
                                  const SizedBox(width:20,),
                                  Expanded(
                                      child:RoundedButton(
                                        text: "Read", press: () {  },
                                        verticalPadding: 9,
                                      ))
                                ],
                              )
                            ],
                          ),
                    )),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(PImages.thirdImage,
                        width: 150,))
                  ],
                )
              ],
            ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

