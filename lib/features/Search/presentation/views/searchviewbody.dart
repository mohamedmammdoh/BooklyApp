import 'package:booklyapp/core/utilites/styles.dart';
import 'package:booklyapp/features/Search/presentation/views/widgets/customtextfield.dart';
import 'package:booklyapp/features/Search/presentation/views/widgets/searchlistview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30.0, right: 4, left: 4),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(),
                SizedBox(height: 10),
                Text(
                  'Best Seller',
                  style: Styles.TextStyle18,
                ),
                ResultSearchListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
