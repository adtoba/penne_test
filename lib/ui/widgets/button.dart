import 'package:flutter/material.dart';
import 'package:pennee/helpers/palette.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({this.child});

  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Palette.lightPurple),
    );
  }
}
