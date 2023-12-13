import 'package:flutter/material.dart';
import 'home_content.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
      child: Column(
        children: [
          CourseDetails(),
        ],
      ),
    );
  }
}
