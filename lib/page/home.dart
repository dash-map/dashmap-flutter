import 'package:dash_map/theme/color.dart';
import 'package:dash_map/widget/app_bar.dart';
import 'package:dash_map/widget/progress_bar.dart';
import 'package:dash_map/widget/speed_dial_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
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

  Widget recommendVideoItem({String? url, String? imgUrl}) {
    return InkWell(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(color: ColorData.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        // child: ,
      ),
      onTap: () {
        // ExtendedImage.network();
      },
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
        height: 150,
        padding: const EdgeInsets.symmetric(horizontal: 36.0),
        decoration: BoxDecoration(
          border: Border.all(color: ColorData.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              roadMapType,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              '$percent%',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: ColorData.red),
            ),
            progressBar(percent),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/roadMap');
      },
    );
  }
}
