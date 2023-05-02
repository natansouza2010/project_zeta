import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/detail_weapons/presentation/pages/detail_weapons_page.dart';

class DetailWeaponsModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/:id',
          child: (context, args) => DetailsWeaponPage(
            id: args.params['id'],
          ),
        ),
      ];
}
