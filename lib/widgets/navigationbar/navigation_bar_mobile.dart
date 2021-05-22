import 'package:first_web_page/routing/route_names.dart';
import 'package:first_web_page/widgets/navigationbar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
            },
          ),
          NavBarLogo(HomeRoute)
        ],
      ),
    );
  }
}
