import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_item.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsListView extends StatelessWidget {
  const CustomBookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: CustomBookDetailsItem(),
      ),
      scrollDirection: Axis.horizontal,
    );
  }
}
