import 'package:flutter/material.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({
    super.key,
    required this.animationController,
    required this.slidingAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Read Free Books",
            ),
          );
        });
  }
}
