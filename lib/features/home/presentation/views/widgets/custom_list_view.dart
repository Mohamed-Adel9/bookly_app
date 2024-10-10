import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {

  FeaturedBooksListView({super.key , required this.books});

  List<BookEntity> books ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) =>  Padding(
          padding: EdgeInsets.all(12.0),
          child: CustomListViewItem(image: books[index].image,),
        ),
      ),
    );
  }
}
