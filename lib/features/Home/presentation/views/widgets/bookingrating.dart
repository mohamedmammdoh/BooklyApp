import 'package:booklyapp/core/utilites/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.count,
    required this.rating,
  });
  final MainAxisAlignment mainAxisAlignment;
  final dynamic rating;
  final dynamic count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3),
        Text(rating.toString(), style: Styles.TextStyle16),
        const SizedBox(width: 5),
        Text(count.toString(),
            style: Styles.TextStyle14.copyWith(
                color: const Color.fromARGB(255, 208, 205, 205))),
      ],
    );
  }
}
