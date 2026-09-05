

import 'package:flutter/material.dart';

const _semilla = Color(0xFF1A237E);

final appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 107, 5, 139)),


appBarTheme: AppBarThemeData(
  centerTitle: true,
  elevation: 0,
  scrolledUnderElevation:0,
  backgroundColor:Colors.transparent

),

cardTheme: CardThemeData(
  elevation: 0,
  margin:EdgeInsets.symmetric(horizontal: 12, vertical: 5),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18),
  )
),


chipTheme: ChipThemeData(
  showCheckmark:false,
  side:BorderSide.none
),

listTileTheme: ListTileThemeData(
  contentPadding: EdgeInsets.symmetric(horizontal: 12)
),

);