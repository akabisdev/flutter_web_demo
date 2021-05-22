import 'package:first_web_page/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ChangeColorOnHover extends StatefulWidget {
  final Widget child;

  const ChangeColorOnHover({Key key, this.child}) : super(key: key);

  @override
  _ChangeColorOnHoverState createState() => _ChangeColorOnHoverState();
}

class _ChangeColorOnHoverState extends State<ChangeColorOnHover> {
  final Color onHoverColor = Colors.amber;
  final nonHoverTransform = Matrix4.identity();
  final onHoverTransform = Matrix4.identity()..translate(-10, 0, 10);
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEntered(true),
      onExit: (e) => _mouseEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: _isHovering ? onHoverTransform : nonHoverTransform,
        color: _isHovering ? onHoverColor : primaryColor,
        child: widget.child,
      ),
    );
  }

  void _mouseEntered(bool hovering) {
    setState(() {
      _isHovering = hovering;
    });
  }
}
