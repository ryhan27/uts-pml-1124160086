import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../widgets/info_tile.dart';
import 'edit_profile_page.dart';
import 'about_page.dart';
import '../main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile myProfile = Profile(
    nama: 'Muhamad Rayhan Ramadhansyah', nim: '1124160086', prodi: 'Teknik Informatika',
    kelas: 'TI24-P SE 2', bio: 'Software Engineer antusias',
    email: 'muhamadrayhanramadhansyah80@gmail.com', noHp: '085893164503', github: 'ryhan27',
    foto: 'assets/images/cyrene.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('Menu Utama', style: TextStyle(fontSize: 24))),
            ListTile(leading: const Icon(Icons.info), title: const Text('Tentang Saya'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutPage()))),
            SwitchListTile(
              title: const Text('Mode Gelap'),
              value: MyApp.of(context).isDarkMode,
              onChanged: (val) => MyApp.of(context).toggleTheme(val),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(radius: 60, backgroundImage: AssetImage('assets/images/foto.png')),
            const SizedBox(height: 16),
            Text(myProfile.nama, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            Text('${myProfile.nim} - ${myProfile.prodi} (${myProfile.kelas})', textAlign: TextAlign.center),
            Text(myProfile.bio, style: const TextStyle(fontStyle: FontStyle.italic)),
            const SizedBox(height: 24),
            Card(
              child: Column(
                children: [
                  InfoTile(icon: Icons.email, label: 'Email', value: myProfile.email),
                  InfoTile(icon: Icons.phone, label: 'No HP', value: myProfile.noHp),
                  InfoTile(icon: Icons.code, label: 'GitHub', value: myProfile.github),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () async {
          final updated = await Navigator.push(context, MaterialPageRoute(builder: (_) => EditProfilePage(profile: myProfile)));
          if (updated != null) {
            setState(() => myProfile = updated as Profile);
          }
        },
      ),
    );
  }
}