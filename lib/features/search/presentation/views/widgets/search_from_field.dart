import 'package:flutter/material.dart';

class SearchFromField extends StatelessWidget {
  const SearchFromField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
        suffixIcon: Icon(Icons.search),
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.white),
        focusedBorder: buildOutlineInputBorder(),
        disabledBorder: buildOutlineInputBorder(),
        border: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(
        width: 1,
        color: Colors.white,
      ),
    );
  }
}
