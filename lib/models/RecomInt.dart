import 'dart:convert';

import 'package:flutter/material.dart';

class RecomInt {
  final List<String> result;

  RecomInt({
    @required this.result,
  });

  factory RecomInt.fromJson(Map<String, dynamic> json) {

    return RecomInt(
      result: json['result'].cast<String>()
    );
  }
}