import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Information {
  final String imagePath;
  final String title;
  final String description;
  final String data;
  final String time;

  Information({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.data,
    required this.time,
  });

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/json/information.json');
  }

  Map<String, dynamic> toMap() {
    return {
      'image': imagePath,
      'title': title,
      'description': description,
      'data': data,
      'time': time,
    };
  }

  factory Information.fromMap(Map<String, dynamic> map) {
    return Information(
      imagePath: map['image'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      data: map['data'] ?? '',
      time: map['time'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Information.fromJson(String source) =>
      Information.fromMap(json.decode(source));
}
