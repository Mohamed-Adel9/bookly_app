import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        CustomListView(),
        Padding(
          padding: EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            top: 40,
          ),
          child: Text(
            "Best Seller",
            style: Styles.bold18,
          ),
        ),
        SizedBox(height: 40,),
        BestSellerItem(),
      ],
    );
  }
}
