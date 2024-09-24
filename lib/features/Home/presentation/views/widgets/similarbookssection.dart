import 'package:booklyapp/core/utilites/styles.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/similarbookslistview.dart';
import 'package:flutter/material.dart';

class SimialrBooksSection extends StatelessWidget {
  const SimialrBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'you can also like',
            style: Styles.TextStyle14.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(height: 10),
        const SimilarBooksListView(),
        const SizedBox(height: 10),
      ],
    );
  }
}
