import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

class BookInfoCart extends StatelessWidget {
  const BookInfoCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * .45,
          height: MediaQuery.sizeOf(context).height * .3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/201/301'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "The Jungle Book",
          style: Styles.regular30,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.medium18.copyWith(
            color: Color(0xff707070),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        RatingWidget(),
      ],
    );
  }
}
