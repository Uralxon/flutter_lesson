import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget web;
  final Widget tablet;
  final Widget phone;
  const ResponsiveWidget(
      {super.key,
      required this.web,
      required this.tablet,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstrains) {
      final double maxWidth = boxConstrains.maxWidth;
      if (maxWidth >= 1100) {
        return web;
      } else if (maxWidth >= 650) {
        return tablet;
      } else {
        return phone;
      }
    });
  }
}
