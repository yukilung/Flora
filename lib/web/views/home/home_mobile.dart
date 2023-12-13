import 'package:flutter/material.dart';
import 'home_content.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
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
