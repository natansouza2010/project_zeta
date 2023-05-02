import 'package:flutter/material.dart';

class DetailsAgentsPage extends StatefulWidget {
  final String uuid;
  const DetailsAgentsPage({super.key, required this.uuid});

  @override
  State<DetailsAgentsPage> createState() => _DetailsAgentsPageState();
}

class _DetailsAgentsPageState extends State<DetailsAgentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.uuid)),
      body: const Text("Teste"),
    );
  }
}
