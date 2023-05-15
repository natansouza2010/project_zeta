import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';

abstract class ValorantState {
  final List<AgentModel> agents;
  const ValorantState({
    required this.agents,
  });
}

class StartValorantState extends ValorantState {
  const StartValorantState({super.agents = const []});
}

class LoadingValorantState extends ValorantState {
  const LoadingValorantState({super.agents = const []});
}

class LoadedValorantState extends ValorantState {
  const LoadedValorantState({required super.agents});
}

class ErrorValorantState extends ValorantState {
  final Error error;
  const ErrorValorantState({required this.error, required super.agents});
}

class SucessValorantState extends ValorantState {
  const SucessValorantState({required super.agents});
}
