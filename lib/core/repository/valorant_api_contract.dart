import 'package:project_zeta/core/model/agent.dart';

abstract class ValorantApiContract {
  Future<List<Agent>> getAgents();
  Future<Map<String, dynamic>> getAgentsByUuid(String uuid);
  Future<Map<String, dynamic>> getWeapons();
}
