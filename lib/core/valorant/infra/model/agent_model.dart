// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:project_zeta/core/valorant/infra/model/abilities_model.dart';

class AgentModel {
  final String uuid;
  final String displayName;
  final String? description;
  final String? displayIcon;
  final String? displayIconSmall;
  final String? bustPortrait;
  final String? fullPortrait;
  final String? fullPortraitV2;
  final String? background;
  final String? developerName;
  final List<AbilitiesModel>? abilities;

  AgentModel({
    required this.uuid,
    required this.displayName,
    this.description,
    this.displayIcon,
    this.displayIconSmall,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.background,
    this.developerName,
    this.abilities,
  });

  AgentModel copyWith({
    String? uuid,
    String? displayName,
    String? description,
    String? displayIcon,
    String? displayIconSmall,
    String? bustPortrait,
    String? fullPortrait,
    String? fullPortraitV2,
    String? background,
    String? developerName,
    List<AbilitiesModel>? abilities,
  }) {
    return AgentModel(
      uuid: uuid ?? this.uuid,
      displayName: displayName ?? this.displayName,
      description: description ?? this.description,
      displayIcon: displayIcon ?? this.displayIcon,
      displayIconSmall: displayIconSmall ?? this.displayIconSmall,
      bustPortrait: bustPortrait ?? this.bustPortrait,
      fullPortrait: fullPortrait ?? this.fullPortrait,
      fullPortraitV2: fullPortraitV2 ?? this.fullPortraitV2,
      background: background ?? this.background,
      developerName: developerName ?? this.developerName,
      abilities: abilities ?? this.abilities,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'displayName': displayName,
      'description': description,
      'displayIcon': displayIcon,
      'displayIconSmall': displayIconSmall,
      'bustPortrait': bustPortrait,
      'fullPortrait': fullPortrait,
      'fullPortraitV2': fullPortraitV2,
      'background': background,
      'developerName': developerName,
      'abilities': abilities,
    };
  }

  factory AgentModel.fromMap(Map<String, dynamic> map) {
    return AgentModel(
        uuid: map['uuid'] as String,
        displayName: map['displayName'] as String,
        description:
            map['description'] != null ? map['description'] as String : null,
        displayIcon:
            map['displayIcon'] != null ? map['displayIcon'] as String : null,
        displayIconSmall: map['displayIconSmall'] != null
            ? map['displayIconSmall'] as String
            : null,
        bustPortrait:
            map['bustPortrait'] != null ? map['bustPortrait'] as String : null,
        fullPortrait:
            map['fullPortrait'] != null ? map['fullPortrait'] as String : null,
        fullPortraitV2: map['fullPortraitV2'] != null
            ? map['fullPortraitV2'] as String
            : null,
        background:
            map['background'] != null ? map['background'] as String : null,
        developerName: map['developerName'] != null
            ? map['developerName'] as String
            : null,
        abilities: map['abilities'] != null
            ? (map['abilities'] as List<dynamic>)
                .map((e) => AbilitiesModel.fromMap(e))
                .toList()
            : null);
  }

  String toJson() => json.encode(toMap());

  factory AgentModel.fromJson(String source) =>
      AgentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AgentModel(uuid: $uuid, displayName: $displayName, description: $description, displayIcon: $displayIcon, displayIconSmall: $displayIconSmall, bustPortrait: $bustPortrait, fullPortrait: $fullPortrait, fullPortraitV2: $fullPortraitV2, background: $background, developerName: $developerName)';
  }

  @override
  bool operator ==(covariant AgentModel other) {
    if (identical(this, other)) return true;

    return other.uuid == uuid &&
        other.displayName == displayName &&
        other.description == description &&
        other.displayIcon == displayIcon &&
        other.displayIconSmall == displayIconSmall &&
        other.bustPortrait == bustPortrait &&
        other.fullPortrait == fullPortrait &&
        other.fullPortraitV2 == fullPortraitV2 &&
        other.background == background;
  }

  @override
  int get hashCode {
    return uuid.hashCode ^
        displayName.hashCode ^
        description.hashCode ^
        displayIcon.hashCode ^
        displayIconSmall.hashCode ^
        bustPortrait.hashCode ^
        fullPortrait.hashCode ^
        fullPortraitV2.hashCode ^
        background.hashCode;
  }
}
