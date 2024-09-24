import 'package:booklyapp/core/utilites/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3),
        const Text('4.8', style: Styles.TextStyle16),
        const SizedBox(width: 5),
        Text('(245)',
            style: Styles.TextStyle14.copyWith(
                color: const Color.fromARGB(255, 208, 205, 205))),
      ],
    );
  }
}
