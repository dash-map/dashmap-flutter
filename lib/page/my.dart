import 'package:dash_map/theme/color.dart';
import 'package:dash_map/widget/app_bar.dart';
import 'package:dash_map/widget/speed_dial_button.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  final String? profileImg;
  final String? level;
  final String? name;
  final String? email;

  const MyPage({Key? key, this.profileImg, this.level, this.name, this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              SizedBox(
                width: 200,
                height: 200,
                child: CircleAvatar(
                  child: Image.asset(profileImg ?? 'assets/login_logo.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Lv.${level ?? '64'} ${name ?? '거미랑 한몸'}',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 5),
              Text(
                email ?? 'pjungaeo423@dsm.hs.kr',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: ColorData.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  showCrown(context, true, 'FE'),
                  showCrown(context, true, 'BE'),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  showCrown(context, true, 'AOS'),
                  showCrown(context, true, 'iOS'),
                  showCrown(context, true, 'AI'),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: speedDialButton(context),
    );
  }

  Widget showCrown(BuildContext context, bool isStudy, String type) {
    return Column(children: [
      Text(
        type,
        style: Theme.of(context)
            .textTheme
            .headline2
            ?.copyWith(color: ColorData.orange2),
      ),
      SizedBox(
        width: 70,
        height: 50,
        child: Image.asset(
          isStudy ? 'assets/crown_on.png' : 'assets/crown_off.png',
        ),
      ),
    ]);
  }
}
