import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;


  Responsive(this.mobile, this.tablet, this.desktop);

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 850;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 850;

  static bool isResponsiveHeight(BuildContext context) => MediaQuery.of(context).size.height > 400;

  static bool isResponsiveWidth(BuildContext context) => MediaQuery.of(context).size.width < 500;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
