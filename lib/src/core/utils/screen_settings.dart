import 'package:flutter/material.dart';

class ScreenSettings {
  static Size _getScreenSize(BuildContext context) =>
      MediaQuery.of(context).size;

  static double _getScreenHeight(BuildContext context) =>
      _getScreenSize(context).height;
  static double _getScreenWidth(BuildContext context) =>
      _getScreenSize(context).width;
  static double setScreenHeight(BuildContext context, double height) =>
      _getScreenHeight(context) * height;
  static double setScreenWidth(BuildContext context, double width) =>
      _getScreenWidth(context) * width;
}
