import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.imagesStar),
        SizedBox(width: 5,),

        Text("4.8",style: Styles.medium16,),
        SizedBox(width: 5,),
        Text("(2390)",style: Styles.regular14,),
      ],
    );
  }
}
