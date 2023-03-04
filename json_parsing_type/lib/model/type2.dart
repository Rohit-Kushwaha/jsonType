// To parse this JSON data, do
//
//     final type2Model = type2ModelFromJson(jsonString);

import 'dart:convert';

Type2Model type2ModelFromJson(String str) => Type2Model.fromJson(json.decode(str));

String type2ModelToJson(Type2Model data) => json.encode(data.toJson());

class Type2Model {
    Type2Model({
        required this.id,
        required this.employee,
    });

    final String id;
    final Employee employee;

    factory Type2Model.fromJson(Map<String, dynamic> json) => Type2Model(
        id: json["id"],
        employee: Employee.fromJson(json["employee"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "employee": employee.toJson(),
    };
}

class Employee {
    Employee({
        required this.name,
        required this.salary,
        required this.married,
    });

    final String name;
    final int salary;
    final bool married;

    factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        name: json["name"],
        salary: json["salary"],
        married: json["married"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "salary": salary,
        "married": married,
    };
}
