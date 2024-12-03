import 'package:flutter/material.dart';

final _kColorScheme = ColorScheme.fromSeed(seedColor: const Color(0xff62b8e4), secondary: const Color(0xff62b8e4));

class AppTheme{
  static ThemeData light(){
    return ThemeData(
        fontFamily: 'Rubik',
        colorScheme: _kColorScheme,
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: _kColorScheme.primary,
          fillColor: Colors.white,
          filled: true,
          border: const OutlineInputBorder(
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              //width: 1.3,
              color: _kColorScheme.surfaceContainerHighest,
            ),
          ),
        ),
        cardTheme: CardTheme(
            elevation: 10,
            shadowColor: Colors.grey.withOpacity(0.24),
            //color: colorScheme.surfaceVariant,
            color: Colors.white,
            surfaceTintColor: Colors.white
        ),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ))
            )
        ),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ))
            )
        ),
        checkboxTheme: CheckboxThemeData(
            side: BorderSide(color: _kColorScheme.primary, width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )
        ),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.all(_kColorScheme.primary),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
            linearMinHeight: 2.5
        )
    );
  }
}