import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/presentation/views/home_screen.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/animated_gif.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_animation.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    super.initState();
    animationMethod();
    navigationTransition();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const AnimatedGif(),
      const SizedBox(
        height: 20,
      ),
      Image.asset(
        Assets.imagesLogo,
      ),
      const SizedBox(
        height: 10,
      ),
      SlidingAnimation(
        animationController: animationController,
        slidingAnimation: slidingAnimation,
      ),
    ]);
  }

  void navigationTransition() {
    Future.delayed(
      const Duration(milliseconds: 3500),
      () {
        Get.to(() => const HomeView(),
            duration: kTransitionDuration, transition: Transition.fadeIn);
      },
    );
  }

  void animationMethod() {
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
  }
}
