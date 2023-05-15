import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:project_zeta/core/constants/app_theme.dart';
import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';
import 'package:project_zeta/core/valorant/presentation/pages/state/valorant_state.dart';
import 'package:project_zeta/core/valorant/presentation/pages/store/home_store.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/agents/presentation/pages/widgets/card_agent.dart';

final agent = AgentModel(uuid: "1", displayName: "JETT");

const List<String> images = [
  "assets/jett.png",
  "assets/jett.png",
  "assets/jett.png",
];

class AgentsPage extends StatefulWidget {
  const AgentsPage({super.key});

  @override
  State<AgentsPage> createState() => _AgentsPageState();
}

class _AgentsPageState extends State<AgentsPage> {
  final homeStore = Modular.get<HomeStore>();
  @override
  void initState() {
    super.initState();
    homeStore.initialState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: redAccent,
        child: Observer(builder: (context) {
          final state = homeStore.state;

          if (state is SucessValorantState) {
            return Swiper(
                controller: SwiperController(),
                itemCount: state.agents.length,
                itemBuilder: (BuildContext context, int index) {
                  final agente = state.agents[index];
                  return CardAgent(
                    agentModel: agente,
                  );
                },
                control: const SwiperControl(
                    color: redAccent, disableColor: Colors.transparent),
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                viewportFraction: 0.7,
                scale: 0.9,
                layout: SwiperLayout.DEFAULT,
                index: 0);
          }
          return const CircularProgressIndicator();
        }));
  }
}
