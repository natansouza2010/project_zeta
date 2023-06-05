import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_zeta/core/valorant/presentation/pages/state/stats_state.dart';
import 'package:project_zeta/core/valorant/presentation/pages/store/home_store.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/stats/presentation/pages/widgets/card_data_not_found.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/stats/presentation/pages/widgets/card_stats.dart';
import 'package:project_zeta/core/valorant/presentation/submodules/stats/presentation/pages/widgets/textfield_valorant.dart';

class StatsPage extends StatelessWidget {
  final homeStore = Modular.get<HomeStore>();

  StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Observer(
          builder: (context) {
            final state = homeStore.stateStats;
            return Column(
              children: [
                Observer(
                  builder: (context) {
                    return Column(
                      children: [
                        TextFieldValorant(
                          labelText: "Username",
                          onChanged: (value) {
                            homeStore.setUsername(value);
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFieldValorant(
                          labelText: "Tagline",
                          onChanged: (value) {
                            homeStore.setTagline(value);
                          },
                        ),
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          onPressed: () {
                            homeStore.initialStatsState(
                              username: homeStore.username,
                              tag: homeStore.tagline,
                            );
                          },
                          child: const Text('Buscar'),
                        ),
                      ],
                    );
                  },
                ),
                if (state is LoadingStatsState)
                  const CircularProgressIndicator(),
                if (state is SucessStatsState) ...[
                  if (state.stats == null || state.stats!.isEmpty)
                    const CardDataNotFound()
                  else
                    CardStats(stats: state.stats),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
