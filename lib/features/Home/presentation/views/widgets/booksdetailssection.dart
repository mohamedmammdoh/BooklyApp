import 'package:booklyapp/core/utilites/styles.dart';
import 'package:booklyapp/core/widgets/custombutton.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/bookingrating.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            image: DecorationImage(
              image: AssetImage('assests/photos/test_image.png'),
            ),
          ),
        ),
        const SizedBox(height: 60),
        const Text('The gunel Book', style: Styles.TextStyle30),
        const SizedBox(height: 5),
        Text(
          'Rudgel kliping',
          style: Styles.TextStyle18.copyWith(color: Colors.grey),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 10),
        const Row(
          children: [
            Expanded(
              child: BooksAction(
                backgroundcolor: Colors.white,
                buttonName: '19.99',
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                textcolor: Colors.black,
              ),
            ),
            Expanded(
              child: BooksAction(
                backgroundcolor: Color(0xffEF8262),
                buttonName: 'Free Preview',
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                textcolor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
