import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'button_mobile.dart';
import 'button_tablet_desktop.dart';

class Button extends StatelessWidget {
  final String title;
  Button(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ButtonMobile(title),
      tablet: ButtonTabletDesktop(title),
    );
  }
}
