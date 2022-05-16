import 'package:dash_map/theme/color.dart';
import 'package:dash_map/widget/app_bar.dart';
import 'package:dash_map/widget/speed_dial_button.dart';
import 'package:flutter/material.dart';

class RoadMapPage extends StatefulWidget {
  const RoadMapPage({Key? key}) : super(key: key);

  @override
  State<RoadMapPage> createState() => _RoadMapPageState();
}

class _RoadMapPageState extends State<RoadMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('The Stack',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: ColorData.grey2)),
                      const SizedBox(height: 5.0),
                      Text('Frontend RoadMap',
                          style: Theme.of(context).textTheme.headline1),
                      const SizedBox(height: 5.0),
                      OutlinedButton(
                        child: Text(
                          '로드맵 전체보기',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: ColorData.yellow),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                              width: 1.0, color: ColorData.yellow),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Image.asset('assets/login_logo.png'),
                  ),
                ],
              ),
              Container(
                width: 280,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorData.black, width: 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '힘내세요~',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: ColorData.grey2),
                    ),
                    Text(
                      'HTTP',
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          ?.copyWith(fontSize: 70, color: ColorData.grey1),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '완료',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: ColorData.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: ColorData.yellow,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: speedDialButton(context),
    );
  }
}
