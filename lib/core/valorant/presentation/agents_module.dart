import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/valorant/presentation/pages/agents_page.dart';

class AgentsModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => AgentsPage()),
      ];
}
