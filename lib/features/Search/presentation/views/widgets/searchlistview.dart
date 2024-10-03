import 'package:booklyapp/features/Home/presentation/views/widgets/bestsellerlistviewItem.dart';
import 'package:flutter/material.dart';

class ResultSearchListView extends StatelessWidget {
  const ResultSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        // child: BookListViewItem(),
        child: Text('mm'),
      ),
      itemCount: 20,
    );
  }
}
