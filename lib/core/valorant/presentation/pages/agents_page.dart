import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:project_zeta/core/valorant/model/agent_model.dart';
import 'package:project_zeta/core/valorant/presentation/pages/widgets/card_agent.dart';

const List<String> images = [
  "assets/jett.png",
  "assets/jett.png",
  "assets/jett.png",
];

class AgentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final agent = AgentModel(uuid: "1", displayName: "JETT");
    return Scaffold(
        body: Swiper(
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return CardAgent(
                agentModel: agent,
              );
            },
            control: const SwiperControl(),
            indicatorLayout: PageIndicatorLayout.COLOR,
            autoplay: true,
            pagination: const SwiperPagination(),
            viewportFraction: 0.7,
            scale: 0.9,
            index: 0));
  }
}
