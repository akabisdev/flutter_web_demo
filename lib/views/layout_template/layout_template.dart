import 'package:first_web_page/locator.dart';
import 'package:first_web_page/routing/route_names.dart';
import 'package:first_web_page/routing/router.dart';
import 'package:first_web_page/services/navigation_service.dart';
import 'package:first_web_page/widgets/centered_view/centered_view.dart';
import 'package:first_web_page/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:first_web_page/widgets/navigationbar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ), 
        ),
      );
    });
  }
}
