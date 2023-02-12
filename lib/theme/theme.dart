import 'package:flutter/material.dart';

ThemeData customTheme() => ThemeData.light(useMaterial3: true).copyWith(
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
          elevation: MaterialStatePropertyAll(0),
          backgroundColor: MaterialStatePropertyAll(Colors.yellow),
        ),
      ),
    );
