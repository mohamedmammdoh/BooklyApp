import 'package:flutter/cupertino.dart';

class SlidingAnimationText extends StatelessWidget {
  const SlidingAnimationText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read free books',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
