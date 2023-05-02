import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:project_zeta/core/constants/app_theme.dart';
import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/weapons/presentation/pages/widgets/card_weapon.dart';

final agent = AgentModel(uuid: "1", displayName: "JETT");

const List<String> images = [
  "assets/vandall.png",
  "assets/vandall.png",
  "assets/vandall.png",
];

class WeaponsPage extends StatelessWidget {
  const WeaponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: redAccent,
      child: Swiper(
          controller: SwiperController(),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return CardWeapon(
              agentModel: agent,
            );
          },
          control: const SwiperControl(
              color: redAccent, disableColor: Colors.transparent),
          indicatorLayout: PageIndicatorLayout.COLOR,
          autoplay: true,
          viewportFraction: 0.7,
          scale: 0.9,
          layout: SwiperLayout.DEFAULT,
          index: 0),
    );
  }
}
