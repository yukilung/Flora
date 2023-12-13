import 'package:flutter/material.dart';
import 'about_content.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CourseDetails(),
        ],
      ),
    );
  }
}
