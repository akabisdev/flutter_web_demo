import 'package:first_web_page/views/home/home_content_desktop.dart';
import 'package:first_web_page/views/home/home_content_mobile.dart';
import 'package:first_web_page/widgets/call_to_action/call_to_action.dart';
import 'package:first_web_page/widgets/centered_view/centered_view.dart';
import 'package:first_web_page/widgets/course_details/course_details.dart';
import 'package:first_web_page/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:first_web_page/widgets/navigationbar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
                desktop: HomeContentDesktop(),
                mobile: HomeContentMobile(),
              );
  }
}
