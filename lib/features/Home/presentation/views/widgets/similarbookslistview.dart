import 'package:booklyapp/features/Home/presentation/views/widgets/customlistviewitem.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(
          imageurl:
              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcS-WNMBDEd4Vf1PxgCQk3Ipc6jqqyHN-MtBUWW4Bnjp9M7Q903Z5ZR7sxcriw-ZexX6R02jhA',
        ),
        itemCount: 10,
      ),
    );
  }
}
