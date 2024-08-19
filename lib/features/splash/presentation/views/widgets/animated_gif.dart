import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';

class AnimatedGif extends StatelessWidget {
  const AnimatedGif({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        width: 200,
        height: 200,
        child: FlutterSplashScreen.gif(
          gifPath: Assets.imagesBook,
          gifWidth: 269,
          gifHeight: 474,
          // nextScreen: const HomeScreen(),
          // duration: const Duration(milliseconds: 3500),
          onInit: () async {
            debugPrint("onInit");
          },
          onEnd: () async {
            debugPrint("onEnd 1");
          },
        ),
      ),
    );
  }
}
