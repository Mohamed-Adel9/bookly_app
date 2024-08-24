import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * .18,
            width: MediaQuery.sizeOf(context).width * .25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/200/300"),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.regular20,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "J.K. Rowling",
                  style: Styles.medium14.copyWith(
                    color: Colors.white.withOpacity(.7),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: Styles.bold22
                    ),
                    SizedBox(width: 20,),
                    Image.asset(Assets.imagesStar),
                    SizedBox(width: 5,),

                    Text("4.8",style: Styles.medium16,),
                    SizedBox(width: 5,),
                    Text("(2390)",style: Styles.regular14,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
