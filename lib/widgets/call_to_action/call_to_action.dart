import 'package:first_web_page/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:first_web_page/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:first_web_page/extensions/hover_extensions.dart';
class CallToAction extends StatelessWidget {
  
  final String title;

  CallToAction(this.title);
  
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      desktop: CallToActionTabletDesktop(title),
    ).showCursorOnHover.changeColorOnHover;
  }
}