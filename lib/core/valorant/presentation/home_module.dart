import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/valorant/presentation/pages/home_page.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/agents/presentation/pages/agents_page.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/detail_weapons/presentation/detail_weapons_module.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/weapons/presentation/pages/weapons_page.dart';

import 'submodules/detail_agents/presentantion/detail_agents_module.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => HomePage(), children: [
          ChildRoute('/agents', child: (context, args) => const AgentsPage()),
          ChildRoute('/weapons', child: (context, args) => const WeaponsPage()),
        ]),
        ModuleRoute('/agents/details', module: DetailAgentsModule()),
        ModuleRoute('/weapons/details', module: DetailWeaponsModule())
      ];
}
