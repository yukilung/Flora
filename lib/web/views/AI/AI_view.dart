import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'AI_desktop.dart';
import 'AI_mobile.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AboutDesktop(),
      mobile: AboutMobile(),
    );
  }
}
