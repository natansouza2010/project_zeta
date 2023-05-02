import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/constants/app_theme.dart';

class DrawerDefault extends StatelessWidget {
  const DrawerDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      backgroundColor: black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.person, color: redAccent),
              contentPadding: const EdgeInsets.all(20),
              title: const Text(
                "Agents",
                style: TextStyle(
                  color: white2,
                ),
              ),
              onTap: () {
                Modular.to.navigate('/home/agents');
                Scaffold.of(context).closeDrawer();
                // ...
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.storage, color: redAccent),
              contentPadding: const EdgeInsets.all(20),
              title: const Text("Weapons", style: TextStyle(color: white2)),
              onTap: () {
                Modular.to.navigate('/home/weapons');
                Scaffold.of(context).closeDrawer();
                // ...
              },
            ),
          ),
        ],
      ),
    );
  }
}
