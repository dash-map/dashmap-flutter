import 'package:dash_map/page/home.dart';
import 'package:dash_map/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(DashMap());

class DashMap extends StatelessWidget {
  const DashMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: HomePage(),
    );
  }
}
