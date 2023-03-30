import 'package:flutter/material.dart';

class CardValorant2 extends StatelessWidget {
  const CardValorant2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
            child: Image.asset(
              'assets/jett.png',
              width: 300,
              height: 440,
            ),
          )
        ],
      ),
    );
  }
}
