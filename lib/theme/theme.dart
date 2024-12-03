import 'package:flutter/material.dart';

const lightColorScheme= ColorScheme(
  brightness: Brightness.light, 
  primary: Color(0xFF416FDF), 
  onPrimary: Color(0xFFFFFFFFF),
   secondary: Color(0xFF6EAEE7),
    onSecondary: Color(0xFFFFFFFFF),
     error: Color(0xFFBA1A1A),
     onError:  Color(0xFFFFFFFFF),
     background: Color(0xFFFCFDF6),
     onBackground: Color(0xFF1A1C18),
     shadow: Color(0xFF000000),
     outlineVariant: Color(0xFFC2CBBC),
      surface: Color(0xFFF9FAF3),
       onSurface: Color(0xFF1A1C18),
       );

const darkColorScheme= ColorScheme(
  brightness: Brightness.dark,
 primary: Color(0xFF416FDF), 
  onPrimary: Color(0xFFFFFFFFF),
   secondary: Color(0xFF6EAEE7),
    onSecondary: Color(0xFFFFFFFFF),
     error: Color(0xFFBA1A1A),
     onError:  Color(0xFFFFFFFFF),
     background: Color(0xFFFCFDF6),
     onBackground: Color(0xFF1A1C18),
     shadow: Color(0xFF000000),
     outlineVariant: Color(0xFFC2CBBC),
      surface: Color(0xFFF9FAF3),
       onSurface: Color(0xFF1A1C18),
       );

      ThemeData lightMode = ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: lightColorScheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black12),
            foregroundColor: 
            MaterialStateProperty.all<Color>(Colors.white),
            elevation: MaterialStateProperty.all<double>(5.0),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          )
        )
      );

       ThemeData dartMode= ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: darkColorScheme,
       );