import 'package:booklyapp/core/utilites/styles.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/customappbar.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/listviewbestseller.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/listviewbody.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomAppBar(),
                ),
                FeaturedListViewItem(),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'Best Seller',
                    style: Styles.TextStyle18,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: ListViewBestSeller(),
            ),
          ),
        ],
      ),
    );
  }
}
