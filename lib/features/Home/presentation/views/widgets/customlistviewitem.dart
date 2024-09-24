import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
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
      ),
    );
  }
}
