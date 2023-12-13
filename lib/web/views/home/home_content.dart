import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
                ? 50
                : 80;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                SizedBox(
                height: 40,
              ),
               SizedBox(
                height: 6,
              ),
              Text(
                'Tree Doctor',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                     color : Color(0xff2B8778),
                    height: 0.9,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        );
      },
    );
  }
}
