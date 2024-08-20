import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * .35,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: NetworkImage("https://picsum.photos/200/300"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(.25),
                  shape: const CircleBorder(),
                ),
                onPressed: () {
                  //todo Navigate to a book details screen
                },
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}