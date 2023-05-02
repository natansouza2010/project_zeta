import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';

abstract class ValorantApiContract {
  Future<List<AgentModel>> getAgents();
  Future<Map<String, dynamic>> getAgentsByUuid(String uuid);
  Future<Map<String, dynamic>> getWeapons();
}
