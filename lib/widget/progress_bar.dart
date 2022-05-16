import 'package:dash_map/theme/color.dart';
import 'package:flutter/material.dart';

Widget progressBar(String percent) {
  return SizedBox(
    width: 250,
    height: 20,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: LinearProgressIndicator(
        value: double.parse(percent) / 100,
        backgroundColor: ColorData.sky,
        valueColor: const AlwaysStoppedAnimation<Color>(ColorData.orange1),
      ),
    ),
  );
}
