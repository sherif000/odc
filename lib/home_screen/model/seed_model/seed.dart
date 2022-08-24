// To parse this JSON data, do
//
//     final seed = seedFromJson(jsonString);

import 'dart:convert';

Seed seedFromJson(String str) => Seed.fromJson(json.decode(str));

String seedToJson(Seed data) => json.encode(data.toJson());

class Seed {
  Seed({
   required this.type,
   required this.message,
  required  this.data,
  });

  String type;
  String message;
  Data data;

  factory Seed.fromJson(Map<String, dynamic> json) => Seed(
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
  required  this.id,
   required this.name,
   required this.description,
   required this.imageurl,
  required  this.type,
   required this.price,
   required this.plant,
   required this.seed,
 required   this.tool,
  });

  String id;
  String name;
  String description;
  String imageurl;
  String type;
  int price;
  Plant plant;
  SeedClass seed;
  SeedClass tool;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    imageurl: json["imageurl"],
    type: json["type"],
    price: json["price"],
    plant: Plant.fromJson(json["plant"]),
    seed: SeedClass.fromJson(json["seed"]),
    tool: SeedClass.fromJson(json["tool"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "imageurl": imageurl,
    "type": type,
    "price": price,
    "plant": plant.toJson(),
    "seed": seed.toJson(),
    "tool": tool.toJson(),
  };
}

class Plant {
  Plant({
    required this.id,
    required this.name,
    required this.description,
    required this.waterCapacity,
    required this.sunLight,
    required this.temperature,
  });

  String id;
  String name;
  String description;
  int waterCapacity;
  int sunLight;
  int temperature;

  factory Plant.fromJson(Map<String, dynamic> json) => Plant(
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

class SeedClass {
  SeedClass({
    required this.id,
    required this.name,
    required this.description,
  });

  String id;
  String name;
  String description;

  factory SeedClass.fromJson(Map<String, dynamic> json) => SeedClass(
    id: json["id"],
    name: json["name"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
  };
}
