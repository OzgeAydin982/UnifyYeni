import 'package:flutter/material.dart';

class RecomInt {
  final int userId;
  final int id;
  final String title;

  RecomInt({
    @required this.userId,
    @required this.id,
    @required this.title,
  });

  factory RecomInt.fromJson(Map<String, dynamic> json) {
    return RecomInt(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}