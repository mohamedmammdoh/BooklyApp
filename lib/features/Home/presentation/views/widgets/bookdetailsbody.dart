import 'package:booklyapp/features/Home/presentation/views/widgets/booksdetailssection.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/customappbarbookdetails.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/similarbookssection.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(top: 10.0, right: 8, left: 8),
            child: SafeArea(
              child: Column(
                children: [
                  CustomAppBarBookDetails(),
                  BooksDetailsSection(),
                  Expanded(child: SizedBox(height: 50)),
                  SimialrBooksSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
