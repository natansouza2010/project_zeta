import 'package:flutter/material.dart';

class HabilitiesValorant extends StatelessWidget {
  const HabilitiesValorant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blacked,
        border: Border.all(width: 2, color: Colors.white),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/vector1.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/vector2.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/vector3.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/vector4.png'),
          ),
        ],
      ),
    );
  }
}
