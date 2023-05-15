import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/constants/app_theme.dart';
import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';

class CardAgent extends StatelessWidget {
  final AgentModel agentModel;
  const CardAgent({super.key, required this.agentModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 64, bottom: 110, left: 8, right: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color(0xFF0F1923),
      child: InkWell(
          onTap: () {
            Modular.to.pushNamed('/home/agents/details/${agentModel.uuid}');
            // Navigator.push(context, CupertinoPageRoute(
            //   builder: (context) => AgentDetailPage(agent: agent))
            // );
          },
          child: Ink(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(agentModel.fullPortrait ?? ''),
                      fit: BoxFit.fitHeight)),
              padding: const EdgeInsets.all(12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(agentModel.developerName.toString(),
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 18)),
                    Text(agentModel.displayName.toString().toUpperCase(),
                        style: const TextStyle(
                            color: white2,
                            fontSize: 36,
                            fontWeight: FontWeight.w700)),
                  ]))),
    );
  }
}
