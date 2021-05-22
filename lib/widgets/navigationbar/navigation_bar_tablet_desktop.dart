import 'package:first_web_page/routing/route_names.dart';
import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(HomeRoute),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem("Episodes", EpisodesRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem("About", AboutRoute)
            ],
          )
        ],
      ),
    );
  }
}