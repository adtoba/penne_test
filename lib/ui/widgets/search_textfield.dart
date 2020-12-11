import 'package:flutter/material.dart';
import 'package:pennee/helpers/palette.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({this.controller});

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: 'Search anything',
          filled: true,
          border: InputBorder.none,
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            color: Palette.lightPurple,
          ),
          contentPadding: EdgeInsets.all(12)),
    );
  }
}
