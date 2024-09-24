import 'package:booklyapp/core/utilites/assests.dart';
import 'package:booklyapp/features/splash/presentation/views/widgets/slidinganimation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    SlidingAniamtion();
    GoToHomeView();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssestsData.logo),
          const SizedBox(height: 5),
          SlidingAnimationText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void SlidingAniamtion() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  // ignore: non_constant_identifier_names
  void GoToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push('/homeview');
    });
  }
}
