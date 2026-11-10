import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(radius: 50, 
              child: Icon(Icons.person, size: 50),
              ),
              const SizedBox(height: 16),
              Text(
                'Muhamad Rayhan Raamdhansyah',
                style: Theme.of (context). textTheme.headlineSmall, textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8,),
              Text(
                '1124160086',
                style: Theme.of (context). textTheme.bodyMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4,),
              Text(
                '1124160086',
                style: Theme.of (context). textTheme.bodyMedium, textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
            ],
          )
        )
      )
    );
  }
}