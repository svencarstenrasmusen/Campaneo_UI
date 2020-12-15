import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

enum AppTheme { Light, Dark }

final appThemeData = {
  AppTheme.Light: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white70,
      fontFamily: 'Impact',
      bottomAppBarTheme: BottomAppBarTheme(
        color: HexColor("#3C3C3C"),
      ),
      iconTheme: IconThemeData(
        color: Colors.white70
      )),
  AppTheme.Dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.black87,
      fontFamily: 'Impact',
      bottomAppBarTheme: BottomAppBarTheme(
        color: HexColor("#3C3C3C"),
      )),
};

String getPrintName(AppTheme theme) {
  return theme.toString().split('.').last;
}
