import 'package:flutter/material.dart';

class Recommendation {
  final String id;
  final String title;
  final Color color;

  const Recommendation({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}