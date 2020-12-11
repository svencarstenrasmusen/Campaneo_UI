import 'package:flutter/material.dart';

enum AppTheme { Light, Dark }

final appThemeData = {
  AppTheme.Light: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white70,
      fontFamily: 'Impact'),
  AppTheme.Dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.black87,
      fontFamily: 'Impact'),
};

String getPrintName(AppTheme theme) {
  return theme.toString().split('.').last;
}
