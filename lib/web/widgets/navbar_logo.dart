import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Image.asset('assets/icons/app_logo.png'),
      ),
    );
  }
}
