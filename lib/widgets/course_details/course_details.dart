
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.Desktop
          ? TextAlign.left
          : TextAlign.center;

      double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile ? 50 : 70;

      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile ? 16 : 20;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Flutter Web\nThe Basics",
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontSize: titleSize, height: 0.9),
                  textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "This tutorial is the first in a series that will go over all the basics for creating a website in Flutter.",
              style: TextStyle(fontSize: descriptionSize, height: 1.7),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
