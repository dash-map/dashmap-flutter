import 'package:dash_map/theme/color.dart';
import 'package:flutter/material.dart';

ThemeData themeData = () {
  final theme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: const Color(0xffFFFFFF),
    textTheme: const TextTheme(
      headline1: TextStyle(
          color: Color(0xff000000),
          fontStyle: FontStyle.normal,
          fontSize: 24.0,
          fontWeight: FontWeight.bold),
      headline2: TextStyle(
          color: Color(0xff000000),
          fontStyle: FontStyle.normal,
          fontSize: 20.0,
          fontWeight: FontWeight.w500),
      bodyText1: TextStyle(
          color: Color(0xff000000),
          fontStyle: FontStyle.normal,
          fontSize: 16.0,
          fontWeight: FontWeight.w500),
      bodyText2: TextStyle(
          color: Color(0xff000000),
          fontStyle: FontStyle.normal,
          fontSize: 14.0,
          fontWeight: FontWeight.w500),
    ),
  );
  return theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(secondary: ColorData.black));
}();
