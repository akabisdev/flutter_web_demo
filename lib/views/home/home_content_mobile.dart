import 'package:first_web_page/widgets/call_to_action/call_to_action.dart';
import 'package:first_web_page/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetail(),
        SizedBox(
          height: 100,
        ),
        CallToAction("JOIN COURSE")
      ],
    );
  }
}