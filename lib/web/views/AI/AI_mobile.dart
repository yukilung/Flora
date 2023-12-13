import 'package:flutter/material.dart';
import 'AI_content.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseDetails(),
        ],
      ),
    );
  }
}
