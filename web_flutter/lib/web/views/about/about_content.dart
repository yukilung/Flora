import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:app_installer/app_installer.dart';

import 'button/button.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 30
                : 30;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 14
                : 18;

        return Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                'About',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    height: 1.5,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
               SizedBox(
                height: 10,
              ),
            
              Text(
                'To help you learn more about trees',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),

              Text(
                'and identify and locate plants around you.',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ), 

               Row(
              children : [
                  IconButton(
                    icon: Image.asset('assets/images/google_pay.png'),
                    iconSize: 170,
                    onPressed: () => AppInstaller.installApk('assets/imagesapp-debug.apk'),
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/apple_pay.png'),
                    iconSize: 140,
                  ),
                  
              ],
            ),
            ],
          ),
        );
      },
    );
  }
}
