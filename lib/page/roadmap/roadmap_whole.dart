import 'package:dash_map/widget/app_bar.dart';
import 'package:flutter/material.dart';

class RoadMapWhole extends StatelessWidget {
  const RoadMapWhole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: InteractiveViewer(
        child: Center(child: Image.asset('assets/login_logo.png')),
      ),
    );
  }
}
