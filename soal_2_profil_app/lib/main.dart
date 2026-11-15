import 'package:flutter/material.dart';
import 'screens/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  static MyAppState of(BuildContext context) => context.findAncestorStateOfType<MyAppState>()!;
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
 ThemeMode _themeMode = ThemeMode.light;
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void toggleTheme(bool isDark) {
    setState(() => _themeMode = isDark ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Rayhan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark, colorScheme: ColorScheme.fromSeed(seedColor: Colors.green, brightness: Brightness.dark)),
      themeMode: _themeMode,
      home: const LoginPage(),
    );
  }
}