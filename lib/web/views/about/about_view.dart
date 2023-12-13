import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'about_desktop.dart';
import 'about_mobile.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: IntroDesktop(),
      mobile: IntroMobile(),
    );
  }
}
