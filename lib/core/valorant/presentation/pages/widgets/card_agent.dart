import 'package:flutter/material.dart';
import 'package:project_zeta/core/valorant/model/agent_model.dart';

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
            // Navigator.push(context, CupertinoPageRoute(
            //   builder: (context) => AgentDetailPage(agent: agent))
            // );
          },
          child: Ink(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/jett.png'),
                      fit: BoxFit.fitHeight)),
              padding: const EdgeInsets.all(12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Teste",
                        style: TextStyle(color: Colors.white70, fontSize: 18)),
                    Text("JETT".toString().toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w700)),
                  ]))),
    );
  }
}
