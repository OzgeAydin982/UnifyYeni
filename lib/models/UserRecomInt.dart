import 'dart:convert';

import 'package:flutter/material.dart';

class UserRecomInt {
  final List<String> result;

  UserRecomInt({
    @required this.result,
  });

  factory UserRecomInt.fromJson(Map<String, dynamic> json) {

    return UserRecomInt(
        result: json['result'].cast<String>()
    );
  }
}