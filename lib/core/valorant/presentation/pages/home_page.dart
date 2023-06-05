import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/constants/app_theme.dart';
import 'package:project_zeta/core/valorant/presentation/pages/widgets/drawer_default.dart';

const List<String> images = [
  "assets/jett.png",
  "assets/jett.png",
  "assets/jett.png",
];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // final agent = AgentModel(uuid: "1", displayName: "JETT");
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Valorant",
              style: TextStyle(
                  color: white2, fontSize: 32, fontFamily: 'Valorant'),
            ),
          ),
        ),
        drawer: const DrawerDefault(),
        body: const RouterOutlet(),
        bottomNavigationBar: Observer(builder: (context) {
          return BottomNavigationBar(
              currentIndex: _index,
              onTap: (value) {
                _onClickNavigation(value);
                setState(() {
                  _index = value;
                });
              },
              fixedColor: redAccent,
              type: BottomNavigationBarType.fixed,
              backgroundColor: black,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Agents",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.storage),
                  label: "Weapons",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.event_note),
                  label: "Stats",
                ),
              ]);
        }));
  }
}

void _onClickNavigation(int value) {
  if (value == 0) {
    Modular.to.navigate('./agents');
  }
  if (value == 1) {
    Modular.to.navigate('./weapons');
  }
  if (value == 2) {
    Modular.to.navigate('./stats');
  }
}
