import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:project_zeta/habilities_valorant.dart';

class CardValorant extends StatelessWidget {
  const CardValorant({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child:
                Stack(alignment: AlignmentDirectional.bottomStart, children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blacked,
                  border: Border(
                    top: BorderSide(
                      width: 1.0,
                    ),
                    bottom: BorderSide(
                      width: 1.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Text(
                          'SOUTH AMERICA',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'DrukWide',
                              color: Colors.reded),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/jett.png',
                      width: 300,
                      height: 440,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RotatedBox(
                  quarterTurns: 1,
                  child: BorderedText(
                    strokeWidth: 1,
                    strokeColor: Colors.white,
                    child: const Text(
                      'JETT',
                      style: TextStyle(
                          fontSize: 72,
                          fontFamily: 'DrukWide',
                          color: Colors.transparent),
                    ),
                  ),
                ),
              ),
              const Flexible(child: HabilitiesValorant())
            ]),
          ),
        ],
      ),
    );
  }
}
