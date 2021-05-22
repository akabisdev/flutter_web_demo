import 'package:first_web_page/locator.dart';
import 'package:first_web_page/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:first_web_page/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Don't use service directly in ui to change any kind of state
        //service should only b used from a view model
        //for now we are using because we don't have viewmodel for it
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ).showCursorOnHover.moveUpOnHover,
    );
  }
}