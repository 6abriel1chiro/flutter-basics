import 'package:flutter/material.dart';

// Function to create and return the dark theme
ThemeData buildDarkTheme() {
  return ThemeData(
    // Define primary color
    primaryColor: Colors.blueGrey[900]!,

    // Define text theme
    textTheme: TextTheme(
      // Define headline style
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      // Define body text style
      bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 16.0,
      ),
    ),

    // Define app bar theme
    appBarTheme: AppBarTheme(
      // Define color for app bar
      color: Colors.blueGrey[900]!,
      toolbarTextStyle: TextTheme(
        headline6: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ).bodyText2,
      titleTextStyle: TextTheme(
        headline6: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ).headline6,
    ),

    // Define card theme
    cardTheme: CardTheme(
      // Define color for card background
      color: Colors.grey[800]!,
    ),

    // Define scaffold background color
    scaffoldBackgroundColor: Colors.grey[900]!,

    // Define bottom app bar theme
    bottomAppBarTheme: BottomAppBarTheme(
      // Define color for bottom app bar
      color: Colors.blueGrey[900]!,
    ),

    // Define icon theme
    iconTheme: IconThemeData(
      // Define color for icons
      color: Colors.white,
    ),

    // Define button theme
    buttonTheme: ButtonThemeData(
      // Define button color
      buttonColor: Colors.blueAccent,
      // Define text color for buttons
      textTheme: ButtonTextTheme.primary,
    ),

    // Define divider color
    dividerColor: Colors.grey[600]!,
    colorScheme: ColorScheme.dark(
      primary: Colors.blueGrey[900]!,
      secondary: Colors.blueAccent,
    )
        .copyWith(secondary: Colors.blueAccent)
        .copyWith(secondary: Colors.blueAccent),
  );
}
