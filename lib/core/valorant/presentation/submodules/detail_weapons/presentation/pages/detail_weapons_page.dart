import 'package:flutter/material.dart';

class DetailsWeaponPage extends StatefulWidget {
  final String id;
  const DetailsWeaponPage({super.key, required this.id});

  @override
  State<DetailsWeaponPage> createState() => _DetailsWeaponPageState();
}

class _DetailsWeaponPageState extends State<DetailsWeaponPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.id)),
      body: const Text("Teste"),
    );
  }
}
