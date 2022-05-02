import 'package:dash_map/theme/color.dart';
import 'package:flutter/material.dart';

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
                  RoadMapItem(roadMapType: 'Frontend Roadmap', percent: '70'),
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
            recommendVideoItem('asd'),
            SizedBox(height: 20),
            recommendVideoItem('asd'),
            SizedBox(height: 20),
            recommendVideoItem('asd'),
            SizedBox(height: 20),
            recommendVideoItem('asd'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget recommendVideoItem(String url) {
    return InkWell(
      child: Container(
        width: 300,
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
              child: Stack(
                children: [
                  Container(
                    height: 25,
                    decoration: BoxDecoration(
                        color: ColorData.sky,
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                  Container(
                    width: 3 * double.parse(percent),
                    height: 25,
                    decoration: BoxDecoration(
                        color: ColorData.red,
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
