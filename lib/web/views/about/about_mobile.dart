import 'package:flutter/material.dart';
import 'about_content.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
      ],
    );
  }
}
