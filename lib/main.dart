import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: kPrimaryColor),
      routerConfig: AppRouter.router,
    );
  }
}
