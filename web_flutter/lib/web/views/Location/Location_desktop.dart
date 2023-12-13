import 'package:flutter/material.dart';
import 'Location_content.dart';

class DownloadDesktop extends StatelessWidget {
  const DownloadDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
      child: Column(
        children: [
          CourseDetails(),
        ],
      ),
    );
  }
}
