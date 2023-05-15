import 'package:dio/dio.dart';
import 'package:project_zeta/core/valorant/infra/repository/valorant_api_contract.dart';
import 'package:project_zeta/core/valorant/infra/model/agent_model.dart';

class ValorantApiImpl implements ValorantApiContract {
  final dio = Dio();

  @override
  Future<List<AgentModel>> getAgents() async {
    try {
      final dio = Dio();
      final response = await dio.get('https://valorant-api.com/v1/agents');
      final data = response.data['data'] as List<dynamic>;
      final agents = data.map((item) => AgentModel.fromMap(item)).toList();
      return agents;
    } catch (error) {
      print('Erro na solicitação: $error');
      return [];
    }
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

  @override
  Future<AgentModel> getAgentById(String uuid) async {
    try {
      final dio = Dio();
      final response =
          await dio.get('https://valorant-api.com/v1/agents/$uuid');
      final data = response.data['data'] as Map<String, dynamic>;

      return AgentModel.fromMap(data);
    } catch (error) {
      print('Erro na solicitação: $error');
      return AgentModel(uuid: "null", displayName: "null");
    }
  }
}
