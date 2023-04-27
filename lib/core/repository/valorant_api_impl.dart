import 'package:dio/dio.dart';
import 'package:project_zeta/core/model/agent.dart';
import 'package:project_zeta/core/repository/valorant_api_contract.dart';

class ValorantApiImpl implements ValorantApiContract {
  final dio = Dio();

  @override
  Future<List<Agent>> getAgents() async {
    final agentsResponse = await dio.get('https://valorant-api.com/v1/agents');
    final response = agentsResponse.data as List;
    final agents = response.map((e) => Agent.fromMap(e)).toList();
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
