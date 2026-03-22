import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_theme.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatefulWidget {
  const CoffeeApp({super.key});

  // Fix: return the public type CoffeeAppState (not _CoffeeAppState)
  // to resolve the library_private_types_in_public_api lint warning.
  static CoffeeAppState of(BuildContext context) =>
      context.findAncestorStateOfType<CoffeeAppState>()!;

  @override
  State<CoffeeApp> createState() => CoffeeAppState();
}

// Fix: renamed from _CoffeeAppState → CoffeeAppState (public)
// so the static CoffeeApp.of() accessor can reference it safely.
class CoffeeAppState extends State<CoffeeApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Coffee Id',
      debugShowCheckedModeBanner: false,

      // ☕  Light — Latte
      theme: AppTheme.latte,

      // 🌑  Dark — Midnight Espresso
      darkTheme: AppTheme.midnightEspresso,

      // ThemeMode.system follows the OS setting automatically.
      // Toggling calls toggleTheme() to override manually.
      themeMode: _themeMode,

      home: const Home(),
    );
  }
}