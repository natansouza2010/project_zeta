import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/detail_agents/presentantion/pages/detail_agents_page.dart';

class DetailAgentsModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/:uiid',
          child: (context, args) => DetailsAgentsPage(
            uuid: args.params['uiid'],
          ),
        ),
      ];
}
