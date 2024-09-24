import 'package:booklyapp/features/Home/presentation/views/widgets/bookdetailsbody.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});
  static String routename = 'detailsview';

  @override
  Widget build(BuildContext context) {
    return const BooksDetailsViewBody();
  }
}
