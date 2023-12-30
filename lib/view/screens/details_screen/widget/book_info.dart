
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images_string.dart';
import '../../../../constants/string_text.dart';
import '../../home_screen/reading_list_card/widget/book_rating.dart';
import '../../welcome_screen/widget/rounded_button.dart';
class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Crushing &",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  "Influence",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                          children: [
                            const Text(
                              PTexts.detailsText,
                              maxLines: 5,
                              style: TextStyle(fontSize: 10, color: pLightBlackColor),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RoundedButton(
                                text: "Read", verticalPadding: 10, press: () {})
                          ],
                        )),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                        const BookRating(score: 4.9)
                      ],
                    )
                  ],
                )
              ],
            )),
        Image.asset(
          PImages.firstImage,
          height: 200,
        )
      ],
    );
  }
}
