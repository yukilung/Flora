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
                ? 30
                : 30;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 14
                : 18;

        return Container(
          width: MediaQuery.of(context).size.width,
         color : Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                'Artificial Intelligence',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 0.5,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'The system should allow the user to ',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),

              Text(
                'recognize the leaf for the information of',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),

              Text(
                'the leaf that comes from which kind of the',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),

              Text(
                'tree by providing an image for the leaf.',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ), 
            ],
          ),
        );
      },
    );
  }
}
