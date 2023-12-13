import 'package:flutter/material.dart';
import 'AI_content.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
      child: Column(
        children: [
          CourseDetails(),
        ],
      ),
    );
  }
}
