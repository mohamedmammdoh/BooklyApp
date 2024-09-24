import 'package:booklyapp/features/Home/presentation/views/widgets/customappbarbookdetails.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBarBookDetails(),
          ],
        ),
      ),
    );
  }
}
