import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
