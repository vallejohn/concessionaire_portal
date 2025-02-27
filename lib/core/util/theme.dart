import 'package:flutter/material.dart';

final _kColorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xff62b8e4), secondary: const Color(0xff62b8e4));

class AppTheme {
  static ThemeData light() {
    return ThemeData(
        fontFamily: 'Rubik',
        colorScheme: _kColorScheme,
        useMaterial3: true,
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.blueGrey,
          contentTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          actionTextColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          behavior: SnackBarBehavior.floating,
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: _kColorScheme.primary,
          fillColor: Colors.white,
          filled: true,
          hintStyle: const TextStyle(fontWeight: FontWeight.w500),
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Adjust the radius
            ),
            color: Colors.white,
            surfaceTintColor: Colors.white),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              padding: WidgetStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              ),
            )),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              padding: WidgetStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              ),
            )),
        checkboxTheme: CheckboxThemeData(
            side: BorderSide(color: _kColorScheme.primary, width: 1.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.all(_kColorScheme.primary),
        ),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(linearMinHeight: 2.5),
      dialogTheme: DialogTheme(
        barrierColor: Colors.black.withOpacity(0.2),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(23)
        )
      )
    );
  }
}
