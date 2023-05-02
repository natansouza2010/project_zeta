import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/valorant/presentation/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        RedirectRoute('/', to: '/home/agents'),
        ModuleRoute('/home/', module: HomeModule()),
      ];
}
