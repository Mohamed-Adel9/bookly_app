import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  _FeaturedBooksListViewState createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  late final ScrollController _scrollController;
  bool _isFetching = false; // To prevent multiple fetches
  var nextPage = 1;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    // Listen to the scroll position
    _scrollController.addListener(() {

      var maxScroll = _scrollController.position.maxScrollExtent;
      var currentPosition = _scrollController.position.pixels;

      if (currentPosition >= maxScroll * 0.7) {
        if (!_isFetching) {
          setState(() {
            _isFetching = true;
          });

          BlocProvider.of<FeaturedBooksCubit>(context)
              .fetchFeaturedBooks(pageNumber: nextPage++);

          setState(() {
            _isFetching = false;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController
        .dispose(); // Dispose the controller when the widget is destroyed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: ListView.builder(
        controller: _scrollController, // Assign the scroll controller
        scrollDirection: Axis.horizontal,
        itemCount: widget.books.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(12.0),
          child: CustomListViewItem(
            image: widget.books[index].image,
          ),
        ),
      ),
    );
  }
}
