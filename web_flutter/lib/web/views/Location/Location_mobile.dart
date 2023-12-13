import 'package:flutter/material.dart';
import 'Location_content.dart';

class DownloadMobile extends StatelessWidget {
  const DownloadMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 500, 0, 0),
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
