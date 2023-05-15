// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AbilitiesModel {
  final String? slot;
  final String? displayName;
  final String? description;
  final String? displayIcon;

  AbilitiesModel({
    this.slot,
    this.displayName,
    this.description,
    this.displayIcon,
  });

  AbilitiesModel copyWith({
    String? slot,
    String? displayName,
    String? description,
    String? displayIcon,
  }) {
    return AbilitiesModel(
      slot: slot ?? this.slot,
      displayName: displayName ?? this.displayName,
      description: description ?? this.description,
      displayIcon: displayIcon ?? this.displayIcon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slot': slot,
      'displayName': displayName,
      'description': description,
      'displayIcon': displayIcon,
    };
  }

  factory AbilitiesModel.fromMap(Map<String, dynamic> map) {
    return AbilitiesModel(
      slot: map['slot'] != null ? map['slot'] as String : null,
      displayName:
          map['displayName'] != null ? map['displayName'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      displayIcon:
          map['displayIcon'] != null ? map['displayIcon'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AbilitiesModel.fromJson(String source) =>
      AbilitiesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AbilitiesModel(slot: $slot, displayName: $displayName, description: $description, displayIcon: $displayIcon)';
  }

  @override
  bool operator ==(covariant AbilitiesModel other) {
    if (identical(this, other)) return true;

    return other.slot == slot &&
        other.displayName == displayName &&
        other.description == description &&
        other.displayIcon == displayIcon;
  }

  @override
  int get hashCode {
    return slot.hashCode ^
        displayName.hashCode ^
        description.hashCode ^
        displayIcon.hashCode;
  }
}
