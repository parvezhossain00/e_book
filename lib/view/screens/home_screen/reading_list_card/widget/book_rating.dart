

import 'package:e_book_app/constants/colors.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    super.key, required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: const Offset(3, 7),
                blurRadius: 20,
                color: const Color(0xFFD3D3D3).withOpacity(.5))
          ]),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: pIconColor,
            size: 15,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "$score",
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12),
          )
        ],
      ),
    );
  }
}
