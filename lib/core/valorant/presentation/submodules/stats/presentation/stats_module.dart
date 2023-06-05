import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/stats/presentation/pages/stats_page.dart';

class DetailWeaponsModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => StatsPage(),
        ),
      ];
}
