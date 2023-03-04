// To parse this JSON data, do
//
//     final type4Model = type4ModelFromJson(jsonString);

import 'dart:convert';

List<Type4Model> type4ModelFromJson(String str) => List<Type4Model>.from(json.decode(str).map((x) => Type4Model.fromJson(x)));

String type4ModelToJson(List<Type4Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Type4Model {
    Type4Model({
        required this.name,
        required this.age,
    });

    final String name;
    final int age;

    factory Type4Model.fromJson(Map<String, dynamic> json) => Type4Model(
        name: json["name"],
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
    };
}
