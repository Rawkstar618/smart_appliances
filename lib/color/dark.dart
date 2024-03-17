import 'package:flutter/material.dart';
import 'package:rgb/color/color_schemes.g.dart';

final darkTheme = _getTheme();
ThemeData _getTheme() {
  final base = ThemeData(colorScheme: darkColorScheme);
  return base.copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: base.colorScheme.primary,
      foregroundColor: base.colorScheme.onPrimary,
    ),
    scaffoldBackgroundColor: base.colorScheme.background,
    cardTheme: base.cardTheme.copyWith(
      color: base.colorScheme.primaryContainer,
    ),
  );
}
