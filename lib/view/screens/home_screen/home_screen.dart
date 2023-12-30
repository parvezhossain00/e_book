import 'package:e_book_app/constants/colors.dart';
import 'package:e_book_app/constants/images_string.dart';
import 'package:e_book_app/constants/string_text.dart';
import 'package:e_book_app/view/screens/details_screen/details_screen.dart';
import 'package:e_book_app/view/screens/home_screen/reading_list_card/reading_list_card.dart';
import 'package:e_book_app/view/screens/home_screen/reading_list_card/widget/book_rating.dart';
import 'package:e_book_app/view/screens/home_screen/reading_list_card/widget/two_side_roundbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(PImages.homeScreenImage),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * .1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.displaySmall,
                          children: [
                            TextSpan(text: "What are you \nreading"),
                            TextSpan(
                              text: " today?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          title: "Crushing & Influence",
                          image: PImages.firstImage,
                          auth: "Gary Venchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Get.to(DetailsScreen());
                          },
                          pressRead: () {},
                        ),
                        ReadingListCard(
                          image: PImages.secondImage,
                          title: PTexts.conTitleText,
                          auth: PTexts.containerSubTitleText,
                          rating: 4.9,
                          pressDetails: () {
                            Get.to(DetailsScreen());
                          },
                          pressRead: () {},
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.displaySmall ,
                                children: [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                  text: "day",
                                  style: TextStyle(fontWeight: FontWeight.bold)
                              ),
                            ]
                            ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(text: TextSpan(
                          style: Theme.of(context).textTheme.displaySmall,
                          children: [
                            TextSpan(
                              text: "Continue "
                            ),
                            TextSpan(
                              text: "reading...",style: TextStyle(fontWeight: FontWeight.bold
                            )
                            ),
                          ]
                        )),
                        SizedBox(height: 20,),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(38.5),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 33,color: Color(0xFFD3D3D3).withOpacity(.84)
                            )
                          ]
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Crushing & Influence",style: TextStyle(fontWeight: FontWeight.bold),),
                                            Text("Gary Venchuk", style: TextStyle(color: pLightBlackColor),),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text("Chapter 7 & 10",
                                              style: TextStyle(fontSize: 10,
                                              color: pLightBlackColor),),
                                            ),
                                            SizedBox(height:5 ,)
                                          ],
                                        )
                                        ),
                                        Image.asset(PImages.firstImage,
                                        width: 55,
                                        )
                                      ],
                                    ),
                                  ), ),
                                Container(
                                  height: 7,
                                  width: size.width * .65 ,
                                  decoration: BoxDecoration(
                                    color: pProgressIndicator,
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40,)
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  height: 205,

                  child: Stack(
                    children: [
                      Positioned(
                           bottom: 0,
                           left: 0,
                           right: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 24,top: 24, right: size.width * .35),
                            height: 185,
                            width: double.infinity,
                            // margin: EdgeInsets.only(
                            //   left: 24,
                            //   top: 24,
                            //   right: size.width * .37,
                            // ),
                            decoration: BoxDecoration(
                                color: Color(0xFFEAEAEA).withOpacity(.45),
                                borderRadius: BorderRadius.circular(29),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text(PTexts.columnText,
                              style: TextStyle(
                                fontSize: 9,
                                color: pLightBlackColor
                              ),),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(PTexts.columnSubText,
                                style: Theme.of(context).textTheme.titleSmall,),
                                Text("Gary Venchuk",
                                style: TextStyle(color: pLightBlackColor),),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    BookRating(score: 4.9),
                                    SizedBox(width: 10,),
                                    Expanded(child: Text("When the earth was flat and everyone wanted to win the game",
                                    maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: pLightBlackColor
                                      ),
                                    ))
                                  ],
                                )

                              ],
                            ),
                          )),
                      Positioned(
                          right: 0,
                          top: 0,
                          child: Image.asset(
                            PImages.thirdImage,
                            width: size.width * .37,
                          ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: SizedBox(
                        height: 40,
                        width: size.width * .3,
                        child: TwoSideRoundButton(
                          text: "Read",
                          radius: 24,
                          press: () {  },
                        ),
                      ))
                    ],
                  ),
                );
  }
}
