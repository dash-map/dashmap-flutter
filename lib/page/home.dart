import 'package:dash_map/page/login.dart';
import 'package:dash_map/theme/color.dart';
import 'package:dash_map/widget/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          width: 40.0,
          height: 40.0,
        ),
        backgroundColor: ColorData.white,
        centerTitle: true,
        elevation: 3.0,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 0.0),
        child: ListView(
          children: [
            Text(
              '로드맵 보기',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  RoadMapItem(roadMapType: 'Frontend Roadmap', percent: '10'),
                  SizedBox(width: 30),
                  RoadMapItem(roadMapType: 'Backend Roadmap', percent: '70'),
                  SizedBox(width: 30),
                  RoadMapItem(roadMapType: 'Android Roadmap', percent: '70'),
                  SizedBox(width: 30),
                  RoadMapItem(roadMapType: 'iOS Roadmap', percent: '70'),
                  SizedBox(width: 30),
                  RoadMapItem(roadMapType: 'AI Roadmap', percent: '70'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '추천강좌 보기',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 10),
            recommendVideoItem(),
            SizedBox(height: 20),
            recommendVideoItem(),
            SizedBox(height: 20),
            recommendVideoItem(),
            SizedBox(height: 20),
            recommendVideoItem(),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: speedDialButton(context),
    );
  }

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
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (BuildContext context) {
            //     return SearchPage();
            //   }),
            // );
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return LoginPage();
              }),
            );
          },
          label: '로그아웃',
          labelBackgroundColor: ColorData.orange2,
          labelStyle: const TextStyle(color: ColorData.white),
        )
        // labelStyle: TextStyle(color: ColorData.sky))
      ],
    );
  }

  Widget recommendVideoItem({String? url, String? imgUrl}) {
    return InkWell(
      child: Container(
        // width: 300,
        height: 150,
        decoration: BoxDecoration(
            border: Border.all(color: ColorData.black),
            borderRadius: BorderRadius.circular(10.0)),
      ),
      onTap: () {},
    );
  }
}

class RoadMapItem extends StatelessWidget {
  final String roadMapType;
  final String percent;

  const RoadMapItem(
      {Key? key, required this.percent, required this.roadMapType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
            border: Border.all(color: ColorData.black),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(roadMapType, style: Theme.of(context).textTheme.headline2),
            Text(
              '$percent%',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: ColorData.red),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: progressBar(percent))
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
