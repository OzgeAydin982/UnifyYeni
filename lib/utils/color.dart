import 'package:flutter/material.dart';
import 'dart:ui';

// Primary Colors (indigo)
const primaryColor = const Color(0xFF4527a0);
const primaryLight = const Color(0xFF7953d2);
const primaryDark = const Color(0xFF000070);

// Secondary Colors (orange)
const secondaryColor = const Color(0xFFFF5722);
const secondaryLight = const Color(0xFFff8a50);
const secondaryDark = const Color(0xFFc41c00);

// Primary Gradient (used in Splash/Login/Signup Screens)
const Color gradientStart = const Color(0xFF000070);
const Color gradientEnd = const Color(0xFFFF5722);

const primaryGradient = const LinearGradient(
  colors: const [gradientStart, gradientEnd],
  stops: const [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

// Secondary Gradient (used in Profile Screen, behind profile photo)
const Color start = const Color(0xFF000070);
const Color end = const Color(0xFF7953d2);

const secondGradient = const LinearGradient(
  colors: const [start, end],
  stops: const [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);