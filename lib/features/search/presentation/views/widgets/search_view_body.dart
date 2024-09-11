import 'package:bookly_app/features/search/presentation/views/widgets/search_from_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: const Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          SearchFromField(),
          SizedBox(
            height: 10.0,
          ),
          Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}






