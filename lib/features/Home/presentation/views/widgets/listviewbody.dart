import 'package:booklyapp/core/widgets/customerrorwidget.dart';
import 'package:booklyapp/core/widgets/customloadingindecator.dart';
import 'package:booklyapp/features/Home/presentation/manager/Featuredbooks_cubit/featuredbooks_cubit.dart';
import 'package:booklyapp/features/Home/presentation/manager/Featuredbooks_cubit/featuredbooks_state.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/customlistviewitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomListViewItem(
                imageurl: state.books[index].volumeInfo.imageLinks!.thumbnail,
              ),
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
            ),
          );
        } else if (state is FeaturedBooksFailer) {
          return CustomErrorWidget(error: state.errorMessage);
        }
        return const CustomLoadingIndecator();
      },
    );
  }
}
