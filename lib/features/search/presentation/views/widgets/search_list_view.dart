import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 11.0),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kBookDetails);
            },
            child: SearchItem(),
          ),
        );
      },
    );
  }
}