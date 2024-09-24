import 'package:booklyapp/features/Home/presentation/views/widgets/bestsellerlistviewItem.dart';
import 'package:flutter/material.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        child: BestSellerListViewItem(),
      ),
      itemCount: 20,
    );
  }
}
