// To parse this JSON data, do
//
//     final containersModel = containersModelFromJson(jsonString);

import 'dart:convert';

List<ContainersModel> containersModelFromJson(String str) =>
    List<ContainersModel>.from(
      json.decode(str).map((x) => ContainersModel.fromJson(x)),
    );

String containersModelToJson(List<ContainersModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContainersModel {
  final String? id;
  final String? name;
  final String? type;
  final String? size;
  final String? age;
  final String? assets;
  final List<Detail>? details;

  ContainersModel({
    this.id,
    this.name,
    this.type,
    this.size,
    this.age,
    this.assets,
    this.details,
  });

  ContainersModel copyWith({
    String? id,
    String? name,
    String? type,
    String? size,
    String? age,
    String? assets,
    List<Detail>? details,
  }) => ContainersModel(
    id: id ?? this.id,
    name: name ?? this.name,
    type: type ?? this.type,
    size: size ?? this.size,
    age: age ?? this.age,
    assets: assets ?? this.assets,
    details: details ?? this.details,
  );

  factory ContainersModel.fromJson(Map<String, dynamic> json) =>
      ContainersModel(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        size: json["size"],
        age: json["age"],
        assets: json["assets"],
        details: json["details"] == null
            ? []
            : List<Detail>.from(
                json["details"]!.map((x) => Detail.fromJson(x)),
              ),
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "type": type,
    "size": size,
    "age": age,
    "assets": assets,
    "details": details == null
        ? []
        : List<dynamic>.from(details!.map((x) => x.toJson())),
  };
}

class Detail {
  final String? status;
  final String? age;
  final String? condition;
  final String? loadability;
  final String? description;

  Detail({
    this.status,
    this.age,
    this.condition,
    this.loadability,
    this.description,
  });

  Detail copyWith({
    String? status,
    String? age,
    String? condition,
    String? loadability,
    String? description,
  }) => Detail(
    status: status ?? this.status,
    age: age ?? this.age,
    condition: condition ?? this.condition,
    loadability: loadability ?? this.loadability,
    description: description ?? this.description,
  );

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    status: json["status"],
    age: json["age"],
    condition: json["condition"],
    loadability: json["loadability"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "age": age,
    "condition": condition,
    "loadability": loadability,
    "description": description,
  };
}
