import 'package:flutter/material.dart';

// Function to create and return the light theme
ThemeData buildLightTheme() {
  return ThemeData(
    // Define primary color
    primaryColor: Colors.deepPurple,

    // Define text theme
    textTheme: TextTheme(
      // Define headline style
      headline1: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'NunitoSans', // Set font family to Nunito Sans
      ),
      // Define body text style
      bodyText1: TextStyle(
        fontSize: 16.0,
        fontFamily: 'NunitoSans', // Set font family to Nunito Sans
      ),
    ),

    // Define app bar theme
    appBarTheme: AppBarTheme(
      // Define text theme for app bar title
      toolbarTextStyle: TextTheme(
        headline6: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'NunitoSans', // Set font family to Nunito Sans
        ),
      ).bodyText2,
      titleTextStyle: TextTheme(
        headline6: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'NunitoSans', // Set font family to Nunito Sans
        ),
      ).headline6,
    ),

    // Define button theme
    buttonTheme: const ButtonThemeData(
      // Define text color for buttons
      textTheme: ButtonTextTheme.primary,
      // Define button text style
      buttonColor: Colors.deepPurple,
      // Define font family for buttons
    ),

    // Define scaffold background color
    scaffoldBackgroundColor: Colors.white,
  );
}
