import 'package:booklyapp/core/utilites/styles.dart';
import 'package:booklyapp/features/Home/presentation/views/widgets/bookingrating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/booksDetails');
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assests/photos/test_image.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .5,
                    child: const Text(
                      'Herry petter kfpwefwgwgnwgnwkfpwefwgwgnwgnwkfpwefwgwgnwgnw',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.TextStyle20,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text('mohameddddddd', style: Styles.TextStyle14),
                  const SizedBox(height: 3),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'200 $',
                        style: Styles.TextStyle20,
                      ),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
