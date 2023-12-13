import 'package:app/shared/theme_color.dart';
import 'package:flutter/material.dart';

class ButtonTabletDesktop extends StatelessWidget {
  final String title;
  const ButtonTabletDesktop(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: secondColor,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
