import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:meals/screens/tabs.dart';

// Defining a custom theme for the app using the 'ThemeData' class
final theme = ThemeData(
  // Setting 'useMaterial3' to 'true' enables Material You (Material Design 3.0) theming.
  useMaterial3: true,

  // Defining the color scheme for the app using 'ColorScheme'.
  colorScheme: ColorScheme.fromSeed(
    // Setting the overall brightness of the app to 'dark'.
    brightness: Brightness.dark,
    // Defining a seed color that will be used to generate the rest of the colors in the theme.
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),

  // Using Google Fonts' 'latoTextTheme()' to set the default text styles for the app.
  // Google Fonts provides a collection of fonts that can be used in Flutter apps.
  textTheme: GoogleFonts.latoTextTheme(),
);

// The main entry point of the Flutter app.
void main() {
  // Running the app by calling 'runApp()' and passing the 'App' widget as the root of the widget tree.
  runApp(const App());
}

// Defining the 'App' class, which extends 'StatelessWidget'.
class App extends StatelessWidget {
  // Constructor for the 'App' class, using named parameters (super.key).
  // The '@required' annotation indicates that 'key' must be provided when creating an instance of this class.
  // However, 'key' is not used explicitly in this code snippet.
  const App({super.key});

  // The 'build' method required by 'StatelessWidget' to describe the user interface.
  // It returns a 'MaterialApp' widget, which is the root of the app's widget tree.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Setting 'debugShowCheckedModeBanner' to 'false' removes the "Debug" banner
      // that appears on the top right corner of the app while in debug mode.
      debugShowCheckedModeBanner: false,
      theme: theme,

      home: const TabsScreen(),
    );
  }
}
