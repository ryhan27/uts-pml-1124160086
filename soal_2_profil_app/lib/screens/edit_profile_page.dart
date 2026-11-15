import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;
  const EditProfilePage({super.key, required this.profile});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _namaCtrl, _emailCtrl, _hpCtrl, _bioCtrl;

  @override
  void initState() {
    super.initState();
    _namaCtrl = TextEditingController(text: widget.profile.nama);
    _emailCtrl = TextEditingController(text: widget.profile.email);
    _hpCtrl = TextEditingController(text: widget.profile.noHp);
    _bioCtrl = TextEditingController(text: widget.profile.bio);
  }

  void _simpan() {
    if (_formKey.currentState!.validate()) {
      Profile dataBaru = Profile(
        nama: _namaCtrl.text, email: _emailCtrl.text, noHp: _hpCtrl.text, bio: _bioCtrl.text,
        nim: widget.profile.nim, prodi: widget.profile.prodi, kelas: widget.profile.kelas, github: widget.profile.github,
      );
      Navigator.pop(context, dataBaru);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profil')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _namaCtrl, decoration: const InputDecoration(labelText: 'Nama Lengkap'),
                validator: (v) => v!.isEmpty ? 'Nama wajib diisi' : null,
              ),
              TextFormField(
                controller: _emailCtrl, decoration: const InputDecoration(labelText: 'Email'),
                validator: (v) => !v!.contains('@') ? 'Email tidak valid' : null,
              ),
              TextFormField(
                controller: _hpCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Nomor HP'),
                validator: (v) => !RegExp(r'^[0-9]{10,13}$').hasMatch(v!) ? 'Hanya angka 10-13 digit' : null,
              ),
              TextFormField(controller: _bioCtrl, decoration: const InputDecoration(labelText: 'Bio Singkat')),
              const SizedBox(height: 24),
              ElevatedButton(onPressed: _simpan, child: const Text('Simpan')),
            ],
          ),
        ),
      ),
    );
  }
}