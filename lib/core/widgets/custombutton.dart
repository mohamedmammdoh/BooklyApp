import 'package:booklyapp/core/utilites/styles.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.backgroundcolor,
    required this.borderRadius,
    required this.textcolor,
    required this.buttonName,
  });
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius borderRadius;
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          buttonName,
          style: Styles.TextStyle18.copyWith(
            color: textcolor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
