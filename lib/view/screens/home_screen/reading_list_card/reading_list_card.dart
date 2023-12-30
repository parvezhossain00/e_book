


import 'package:e_book_app/view/screens/home_screen/reading_list_card/widget/book_rating.dart';
import 'package:e_book_app/view/screens/home_screen/reading_list_card/widget/two_side_roundbutton.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final VoidCallback pressDetails;
  final VoidCallback pressRead;
  const ReadingListCard({
    super.key, required this.image, required this.title, required this.auth, required this.rating, required this.pressDetails, required this.pressRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 33,
                      color: pShadowColor,
                    )
                  ]),
            ),
          ),
          Image.asset(image,
            width: 150,
          ),
          Positioned(
              top: 35,
              right: 10,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:  Icon(Icons.favorite_border),
                  ),
                  BookRating(
                    score: rating,
                  )
                ],
              )),
          Positioned(
              top: 160,
              child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 24),
                      child: RichText(text:TextSpan(
                          style: TextStyle(color: pBlackColor),
                          children: [
                            TextSpan(
                                text: "$title\n",
                                style: TextStyle(fontWeight: FontWeight.bold)
                            ),
                            TextSpan(
                                text:auth,
                                style: TextStyle(
                                  color: pLightBlackColor,
                                )
                            )
                          ]
                      )),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: const Text("Details"),
                          ),
                        ),
                        Expanded(child: TwoSideRoundButton(
                          text: "Read",
                          press: pressRead,
                        ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

