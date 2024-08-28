import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_info_cart.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/price_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomBookDetailsAppBar(),
          SizedBox(
            height: 33,
          ),
          BookInfoCart(),
          SizedBox(
            height: 36,
          ),
          PriceWidget(),
          SizedBox(
            height: 51,
          ),
          Text(
            "You can also like",
            style: Styles.semiBold14,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: CustomBookDetailsListView()),

        ],
      ),
    );
  }
}
