import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';

abstract class DetailValorantAgentState {
  final AgentModel? agent;
  const DetailValorantAgentState({
    required this.agent,
  });
}

class StartDetailValorantAgentState extends DetailValorantAgentState {
  const StartDetailValorantAgentState({super.agent});
}

class LoadingDetailValorantAgentState extends DetailValorantAgentState {
  const LoadingDetailValorantAgentState({super.agent});
}

class LoadedDetailValorantAgentState extends DetailValorantAgentState {
  const LoadedDetailValorantAgentState({required super.agent});
}

class ErrorDetailValorantAgentState extends DetailValorantAgentState {
  final Error error;
  const ErrorDetailValorantAgentState(
      {required this.error, required super.agent});
}

class SucessDetailValorantAgentState extends DetailValorantAgentState {
  const SucessDetailValorantAgentState({required super.agent});
}
