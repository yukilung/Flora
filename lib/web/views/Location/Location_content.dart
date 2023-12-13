import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Positioning function',
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
                'The system should allow the user to search',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),

              Text(
                'for the location of the tree by providing',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),

              Text(
                'search criteria including the name and the',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ),

              Text(
                'park which user is Sinside.',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.5,
                ),
                textAlign: textAlignment,
              ), 
              SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
