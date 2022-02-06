// To parse this JSON data, do
//
//     final testModel = testModelFromJson(jsonString);

import 'dart:convert';

TestModel testModelFromJson(String str) => TestModel.fromJson(json.decode(str));

String testModelToJson(TestModel data) => json.encode(data.toJson());

class TestModel {
  TestModel({
    this.greeting,
    this.instructions,
  });

  String? greeting;
  int? instructions;

  factory TestModel.fromJson(Map<String, dynamic> json) => TestModel(
        greeting: json["greeting"],
        instructions: json["instructions"],
      );

  Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": instructions,
      };
}
