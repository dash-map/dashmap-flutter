import 'package:dash_map/page/home.dart';
import 'package:dash_map/page/login.dart';
import 'package:dash_map/page/my.dart';
import 'package:dash_map/page/roadmap/roadmap.dart';
import 'package:dash_map/theme/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DashMap());

class DashMap extends StatelessWidget {
  const DashMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/roadMap': (context) => RoadMapPage(),
        '/login': (context) => LoginPage(),
        '/my': (context) => MyPage(),
      },
    );
  }
}
