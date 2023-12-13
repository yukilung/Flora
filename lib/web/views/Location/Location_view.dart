import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Location_desktop.dart';
import 'Location_mobile.dart';

class DownloadView extends StatelessWidget {
  const DownloadView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: DownloadDesktop(),
      mobile: DownloadMobile(),
    );
  }
}
