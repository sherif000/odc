// To parse this JSON data, do
//
//     final plant = plantFromJson(jsonString);

import 'dart:convert';

Plant plantFromJson(String str) => Plant.fromJson(json.decode(str));

String plantToJson(Plant data) => json.encode(data.toJson());

class Plant {
  Plant({
  required  this.type,
  required  this.message,
  required  this.data,
  });

  String type;
  String message;
  Data data;

  factory Plant.fromJson(Map<String, dynamic> json) => Plant(
    type: json["type"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data({
   required this.id,
   required this.name,
   required this.description,
   required this.waterCapacity,
   required this.sunLight,
  required  this.temperature,
  });

  String id;
  String name;
  String description;
  int waterCapacity;
  int sunLight;
  int temperature;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    waterCapacity: json["waterCapacity"],
    sunLight: json["sunLight"],
    temperature: json["temperature"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "waterCapacity": waterCapacity,
    "sunLight": sunLight,
    "temperature": temperature,
  };
}
