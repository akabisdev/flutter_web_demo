import 'package:first_web_page/routing/route_names.dart';
import 'package:first_web_page/widgets/navigation_drawer/drawer_item.dart';
import 'package:first_web_page/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          //Home Work: Combine the UI for this widget with NavBarItem and make it responsive
          DrawerItem("Episodes", Icons.videocam, EpisodesRoute),
          DrawerItem("About", Icons.help, AboutRoute)
        ],
      ),
    );
  }
}
