// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobx/mobx.dart';

import 'package:project_zeta/core/valorant/infra/repository/valorant_api_contract.dart';
import 'package:project_zeta/core/valorant/presentation/pages/state/detail_valorant_agent.dart';
import 'package:project_zeta/core/valorant/presentation/pages/state/valorant_state.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final ValorantApiContract valorantApiContract;
  HomeStoreBase({
    required this.valorantApiContract,
  });

  @observable
  ValorantState state = const StartValorantState();

  @observable
  DetailValorantAgentState detailState = const StartDetailValorantAgentState();

  @action
  Future<void> setState(ValorantState newState) async => state = newState;
  @action
  Future<void> setDetailState(
          DetailValorantAgentState detailAgentsState) async =>
      detailState = detailAgentsState;

  Future initialState() async {
    await setState(const LoadingValorantState());
    state = await getAgents();
    setState(state);
    if (state == null) {
      setState(ErrorValorantState(error: Error(), agents: []));
    }

    return;
  }

  Future<ValorantState> getAgents() async {
    final result = await valorantApiContract.getAgents();

    return SucessValorantState(agents: result);
  }

  Future initialDetailState(String uuid) async {
    await setDetailState(const LoadingDetailValorantAgentState());
    detailState = await getDetailAgents(uuid);
    setDetailState(detailState);
    if (state == null) {
      setDetailState(
          ErrorDetailValorantAgentState(error: Error(), agent: null));
    }

    return;
  }

  Future<DetailValorantAgentState> getDetailAgents(String uuid) async {
    final result = await valorantApiContract.getAgentById(uuid);

    return SucessDetailValorantAgentState(agent: result);
  }
}
