import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/valorant/presentation/agents_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        RedirectRoute('/', to: '/agents/'),
        ModuleRoute('/agents/', module: AgentsModule()),
      ];
}
