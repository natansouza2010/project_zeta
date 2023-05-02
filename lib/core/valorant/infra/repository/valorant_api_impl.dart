import 'package:dio/dio.dart';
import 'package:project_zeta/core/valorant/infra/repository/valorant_api_contract.dart';
import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';

class ValorantApiImpl implements ValorantApiContract {
  final dio = Dio();

  @override
  Future<List<AgentModel>> getAgents() async {
    final agentsResponse = await dio.get('https://valorant-api.com/v1/agents');
    final response = agentsResponse.data as List;
    final agents = response.map((e) => AgentModel.fromMap(e)).toList();
    return agents;
  }

  @override
  Future<Map<String, dynamic>> getAgentsByUuid(String uuid) async {
    // TODO: implement getAgentsByUuid
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getWeapons() async {
    // TODO: implement getWeapons
    throw UnimplementedError();
  }
}
