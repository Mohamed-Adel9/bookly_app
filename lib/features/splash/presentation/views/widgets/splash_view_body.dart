import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:bookly_app/features/home/views/home_screen.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
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
                nextScreen: const HomeScreen(),
                duration: const Duration(milliseconds: 3500),
                onInit: () async {
                  debugPrint("onInit");
                },
                onEnd: () async {
                  debugPrint("onEnd 1");
                },
              ),
            ),
          ),
          const SizedBox(height:20),
          Image.asset(Assets.imagesLogo),
        ]);
  }
}
