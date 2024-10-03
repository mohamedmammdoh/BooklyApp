import 'package:booklyapp/core/widgets/customloadingindecator.dart';
import 'package:booklyapp/features/Home/presentation/manager/Newestbooks_cubit/newestbooks_cubit.dart';
import 'package:booklyapp/features/Home/presentation/manager/Newestbooks_cubit/newestbooks_state.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/bestsellerlistviewItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbooksCubit, NewestedBooksState>(
      builder: (context, state) {
        if (state is NewsetedBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: BookListViewItem(
                bookModel: state.books[index],
              ),
            ),
            itemCount: state.books.length,
          );
        } else if (state is NewsetedBooksFailer) {
          return ErrorWidget(state.errorMessage);
        }
        return const CustomLoadingIndecator();
      },
    );
  }
}
