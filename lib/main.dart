import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dynamic_theme/ThemeSelectionPage.dart';

import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeSwitcherWidget(),
    );
  }
}

class ThemeSwitcherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            theme: themeProvider.getTheme(),
            darkTheme: themeProvider.getDarkTheme(),
            themeMode: themeProvider.getThemeMode(),
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeData? _selectedTheme = _themes[ThemeOption.blue];

  ThemeData getLightTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
    );
  }

  ThemeData getDarkTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
    );
  }

  ThemeMode getThemeMode() => _themeMode;

  ThemeData? getTheme() {
    return _selectedTheme;
  }

  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  void setTheme(ThemeOption option) {
    _selectedTheme = _themes[option]!;
    notifyListeners();
  }
}

// Define ThemeData for each theme option
final Map<ThemeOption, ThemeData> _themes = {
  ThemeOption.red: ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.light,
  ),
  ThemeOption.green: ThemeData(
    primarySwatch: Colors.green,
    brightness: Brightness.light,
  ),
  ThemeOption.blue: ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
  ),
  ThemeOption.purple: ThemeData(
    primarySwatch: Colors.purple,
    brightness: Brightness.light,
  ),
  ThemeOption.orange: ThemeData(
    primarySwatch: Colors.orange,
    brightness: Brightness.light,
  ),
  ThemeOption.pink: ThemeData(
    primarySwatch: Colors.pink,
    brightness: Brightness.light,
  ),
  ThemeOption.teal: ThemeData(
    primarySwatch: Colors.teal,
    brightness: Brightness.light,
  ),
  ThemeOption.yellow: ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.light,
  ),
  ThemeOption.brown: ThemeData(
    primarySwatch: Colors.brown,
    brightness: Brightness.light,
  ),
  ThemeOption.grey: ThemeData(
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
  ),

};
