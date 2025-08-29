import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget? mobile;

  const Responsive({
    super.key,
    required this.desktop,
    this.mobile,
  });

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width <= 800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 800 && mobile != null) {
          return mobile!;
        } else {
          return desktop;
        }
      },
    );
  }
}
