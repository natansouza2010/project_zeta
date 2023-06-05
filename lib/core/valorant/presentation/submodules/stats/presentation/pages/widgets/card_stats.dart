import 'package:flutter/material.dart';
import 'package:project_zeta/core/constants/app_theme.dart';

class CardStats extends StatelessWidget {
  final Map<String, dynamic>? stats;
  const CardStats({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 64, bottom: 110, left: 8, right: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: const Color(0xFF0F1923),
      child: InkWell(
          onTap: () {},
          child: Ink(
              padding: const EdgeInsets.all(12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Current Tier: ${stats?['currenttier']}",
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 18)),
                        Text("Tier : ${stats?['currenttierpatched']}",
                            style: const TextStyle(
                                color: Colors.white70, fontSize: 18)),
                      ],
                    ),
                    Text("Ranking:  ${stats?['ranking_in_tier']}",
                        style: const TextStyle(
                            color: white2,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                    Text(
                        "MMR Change to last game : ${stats?['mmr_change_to_last_game']}",
                        style: const TextStyle(
                            color: white2,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                    Text("Elo: ${stats?['elo']} ",
                        style: const TextStyle(
                            color: white2,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                    Text("Name: ${stats?['name']}",
                        style: const TextStyle(
                            color: white2,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                    Text("Tag: ${stats?['tag']} ",
                        style: const TextStyle(
                            color: white2,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)),
                  ]))),
    );
  }
}
