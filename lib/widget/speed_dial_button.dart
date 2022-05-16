import 'package:dash_map/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

Widget speedDialButton(BuildContext context) {
  return SpeedDial(
    animatedIcon: AnimatedIcons.menu_close,
    animatedIconTheme: const IconThemeData(
      size: 22,
      color: ColorData.white,
    ),
    backgroundColor: ColorData.orange2,
    visible: true,
    curve: Curves.bounceIn,
    spacing: 10.0,
    spaceBetweenChildren: 10.0,
    children: [
      SpeedDialChild(
        child: const Icon(
          Icons.person,
          color: ColorData.white,
        ),
        backgroundColor: ColorData.orange2,
        onTap: () {
          Navigator.pushNamed(context, '/my');
        },
        label: '마이페이지',
        labelBackgroundColor: ColorData.orange2,
        labelStyle: const TextStyle(color: ColorData.white),
      ),
      SpeedDialChild(
        child: const Icon(
          Icons.exit_to_app,
          color: ColorData.white,
        ),
        backgroundColor: ColorData.orange2,
        onTap: () {
          Navigator.pushNamed(context, '/login');
        },
        label: '로그아웃',
        labelBackgroundColor: ColorData.orange2,
        labelStyle: const TextStyle(color: ColorData.white),
      )
      // labelStyle: TextStyle(color: ColorData.sky))
    ],
  );
}
