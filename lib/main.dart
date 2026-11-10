import 'package:flutter/material.dart';
import 'profile_page.dart';

void main() {
  runApp (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Muhamad Rayhan Ramadhansyah',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow, 
        brightness: Brightness.dark)
      ),
      themeMode: ThemeMode.system,
      home: const ProfilePage(),
    );
    
  }
}