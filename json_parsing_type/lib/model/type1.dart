// To parse this JSON data, do
//
//     final type1Model = type1ModelFromJson(jsonString);

import 'dart:convert';

Type1Model type1ModelFromJson(String str) => Type1Model.fromJson(json.decode(str));

String type1ModelToJson(Type1Model data) => json.encode(data.toJson());

class Type1Model {
    Type1Model({
        required this.lastName,
        required this.firstName,
        required this.age,
    });

    final String lastName;
    final String firstName;
    final int age;

    factory Type1Model.fromJson(Map<String, dynamic> json) => Type1Model(
        lastName: json["lastName"],
        firstName: json["firstName"],
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "lastName": lastName,
        "firstName": firstName,
        "age": age,
    };
}
