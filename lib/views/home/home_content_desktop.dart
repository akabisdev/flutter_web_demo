import 'package:first_web_page/widgets/call_to_action/call_to_action.dart';
import 'package:first_web_page/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetail(),
        Expanded(
          child: Center(
            child: CallToAction('JOIN COURSE'),
          ),
        )
      ],
    );
  }
}
