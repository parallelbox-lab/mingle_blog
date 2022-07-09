import 'package:flutter/material.dart';
class AppTheme{
  
  //Colors for theme
  static Color lightPrimary =const Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color darkAccent = Colors.white;
  static Color lightBG = const Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightBG,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor:darkBG ),
      //  accentColor: lightAccent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: darkPrimary),
      backgroundColor: lightBG,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: darkBG,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor:lightBG ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: lightPrimary),
      backgroundColor: darkBG,
      elevation: 0,
      titleTextStyle:  TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
  );
}