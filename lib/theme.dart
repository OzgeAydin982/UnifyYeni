import 'package:flutter/material.dart';

import 'package:unify_app/utils/color.dart';
import 'package:unify_app/utils/utils.dart';

// Theme items built to be used in Screen Classes
ThemeData buildThemeData(){
  final baseTheme = ThemeData(fontFamily: AvailableFonts.primaryFont);

  // return baseTheme.copyWith();
  return baseTheme.copyWith(
    primaryColor: primaryColor,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    accentColor: secondaryColor,
  );
}