import 'package:dash_map/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget progressBar(String percent) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    child: LinearPercentIndicator(
      lineHeight: 20,
      barRadius: Radius.circular(10.0),
      percent: double.parse(percent) / 100,
      backgroundColor: ColorData.sky,
      progressColor: ColorData.orange1,
      animation: true,
      animationDuration: 500,
    ),
  );
}
