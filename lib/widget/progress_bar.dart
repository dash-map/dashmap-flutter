import 'package:dash_map/theme/color.dart';
import 'package:flutter/material.dart';

Widget progressBar(String percent) {
  return Stack(
    children: [
      Container(
        height: 20,
        decoration: BoxDecoration(
            color: ColorData.sky, borderRadius: BorderRadius.circular(15.0)),
      ),
      Container(
        width: 3 * double.parse(percent),
        height: 20,
        decoration: BoxDecoration(
            color: ColorData.orange1,
            borderRadius: BorderRadius.circular(15.0)),
      ),
    ],
  );
}
