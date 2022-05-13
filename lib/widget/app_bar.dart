import 'package:dash_map/theme/color.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar() {
  return AppBar(
    title: Image.asset(
      'assets/logo.png',
      fit: BoxFit.contain,
      width: 40.0,
      height: 40.0,
    ),
    backgroundColor: ColorData.white,
    centerTitle: true,
    elevation: 3.0,
  );
}
