import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 50),
                ),
                const SizedBox(height: 16),
                Text(
                  'Muhamad Rayhan Ramadhansyah',
                  style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  '1124160086', style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                Text(
                  'Teknik Informatika - TI24-P SE 2', style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        InfoTile(
                          icon: Icons.email,
                          label: 'Email',
                          value: 'muhamadrayhanramadhansyah80@gmail.com',),
                        InfoTile(
                          icon: Icons.phone,
                          label: 'Nomor HP', value: '085893164503',
                        ),
                        InfoTile(
                          icon: Icons.class_,
                          label: 'Kelas',
                          value: 'TI24-P SE 2',
                        ),
                        InfoTile(
                          icon: Icons.code,
                          label: 'GitHub',
                          value: 'ryhan27',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        InfoTile(
                          icon: Icons.web,
                          label: 'Project Yang Sudah Pernah Dibuat', value: 'Web Berbasis RT/RW Dan Web UMKM Laundry - Jaya',
                        ),
                        InfoTile(
                          icon: Icons.sports_esports,
                          label: 'Hobi', value: 'Bermain Game Valorant Dan Mobile Legends',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}