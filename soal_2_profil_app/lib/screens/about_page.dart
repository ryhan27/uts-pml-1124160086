import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Saya')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text('Keahlian & Hobi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListTile(leading: Icon(Icons.code), title: Text('Web Development (PHP, Laravel)')),
          ListTile(leading: Icon(Icons.design_services), title: Text('UI/UX Design (Figma)')),
          ListTile(leading: Icon(Icons.sports_esports), title: Text('PC Gaming (Valorant)')),
          Divider(),
          Text('Pendidikan Saat Ini', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ListTile(leading: Icon(Icons.school), title: Text('Institut Teknologi & Bisnis Bina Sarana Global'), subtitle: Text('Teknik Informatika (Sekarang)')),
        ],
      ),
    );
  }
}