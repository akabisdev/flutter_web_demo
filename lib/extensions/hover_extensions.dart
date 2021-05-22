import 'package:first_web_page/widgets/change_color_on_hover.dart';
import 'package:first_web_page/widgets/translate_on_hover.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById("app-container");

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this, //this represents the widget we are using the extension on
      onHover: (event) => appContainer.style.cursor = 'pointer',
      onExit: (event) => appContainer.style.cursor = 'default',
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }

  Widget get changeColorOnHover {
    return ChangeColorOnHover(child: this);
  }
}
