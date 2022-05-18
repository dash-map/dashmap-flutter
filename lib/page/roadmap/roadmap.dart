import 'package:dash_map/page/roadmap/roadmap_whole.dart';
import 'package:dash_map/theme/color.dart';
import 'package:dash_map/widget/app_bar.dart';
import 'package:dash_map/widget/progress_bar.dart';
import 'package:dash_map/widget/speed_dial_button.dart';
import 'package:flutter/material.dart';

class RoadMapPage extends StatefulWidget {
  final String progress;

  const RoadMapPage({Key? key, required this.progress}) : super(key: key);

  @override
  State<RoadMapPage> createState() => _RoadMapPageState();
}

class _RoadMapPageState extends State<RoadMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            const SizedBox(height: 30.0),
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
                        style: Theme.of(context).textTheme.headline2),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => RoadMapWhole(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 70,
                  height: 70,
                  child: Image.asset('assets/login_logo.png'),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            RoadMapQuest(question: '안녕', topic: 'HTTP'),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: progressBar(widget.progress)),
                const SizedBox(width: 5.0),
                Text(
                  '${widget.progress}%',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: ColorData.orange2),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: speedDialButton(context),
    );
  }
}

class RoadMapQuest extends StatefulWidget {
  final String question;
  final String topic;

  const RoadMapQuest({
    Key? key,
    required this.question,
    required this.topic,
  }) : super(key: key);

  @override
  State<RoadMapQuest> createState() => _RoadMapQuestState();
}

class _RoadMapQuestState extends State<RoadMapQuest> {
  late TextEditingController _myController;
  bool isStudied = false;

  @override
  initState() {
    _myController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 250,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: ColorData.black, width: 1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Visibility(
              visible: isStudied,
              child: Text(
                'Q. ${widget.question}',
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: ColorData.grey1),
                maxLines: null,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: isStudied
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      controller: _myController,
                      decoration: InputDecoration(
                        hintText: '답을 입력해주세요.',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: ColorData.grey2),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorData.yellow),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: ColorData.yellow),
                        ),
                      ),
                    ),
                  )
                : Text(
                    widget.topic,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 70, color: ColorData.grey1),
                  ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isStudied = !isStudied;
                    });
                  },
                  child: Text(
                    isStudied ? '완료' : '다음',
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
          ),
        ],
      ),
    );
  }
}
