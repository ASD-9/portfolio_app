import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  final ColorScheme colorScheme = ColorScheme.fromSeed(
    seedColor: Colors.indigo,
    brightness: Brightness.dark
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
    ),

    chipTheme: ChipThemeData(
      backgroundColor: colorScheme.onPrimary,
      shape: const StadiumBorder(),
      labelStyle: TextStyle(color: colorScheme.onSurface,),
      side: BorderSide.none,
      padding: EdgeInsets.all(10),
    ),

    dividerTheme: DividerThemeData(
      color: colorScheme.onSurface
    ),

    scrollbarTheme: ScrollbarThemeData(
      thickness: WidgetStatePropertyAll(5),
      thumbColor: WidgetStatePropertyAll(colorScheme.onPrimary),
    )
  );
}
