// To parse this JSON data, do
//
//     final type3Model = type3ModelFromJson(jsonString);

import 'dart:convert';

List<String> type3ModelFromJson(String str) => List<String>.from(json.decode(str).map((x) => x));

String type3ModelToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
