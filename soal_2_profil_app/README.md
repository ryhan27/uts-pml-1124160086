# UTS Pemrograman Mobile Lanjutan

Aplikasi Profil Mahasiswa Interaktif menggunakan Flutter (`soal_2_profil_app`) dengan struktur kode terpisah (*Models, Screens, & Widgets*).

## 👨‍💻 Identitas Mahasiswa

* **Nama:** Muhamad Rayhan Ramadhansyah
* **NIM:** 1124160086
* **Program Studi:** Teknik Informatika - Software Engineering
* **Kelas:** TI24-P SE 2
* **Kampus:** Institut Bina Sarana Global (Global Institute)

## ✨ Fitur Aplikasi

* **Halaman Login:** Dilengkapi dengan validasi input form (`TextFormField` untuk mencegah kolom kosong), animasi *loading indicator*, dan perpindahan halaman menggunakan `Navigator.pushReplacement` serta username dan login cuma pakai `null` Saja.
* **Halaman Profil:** Menampilkan foto profil dari *local assets* (`CircleAvatar` + `AssetImage`), biodata mahasiswa dari Model `Profile`, kartu informasi kontak (`Card` + custom widget `InfoTile`), serta terintegrasi dengan saklar tema (*Dark/Light Mode*) di dalam `Drawer`.
* **Halaman Edit Profil:** Form pengubahan data (Nama, Email, Nomor HP, Bio) dengan validasi ketat (*RegExp* untuk Nomor HP 10–13 digit angka, validasi format `@` pada Email, dan wajib isi pada Nama) serta pembaruan *state* otomatis ke halaman profil menggunakan `Navigator.pop` dan `setState()`.
* **Halaman Tentang Saya:** Menampilkan informasi keahlian, hobi, dan riwayat pendidikan menggunakan widget `ListView`.
* **Navigasi Terintegrasi:** Memanfaatkan `Drawer` (Menu Samping) dan `FloatingActionButton` (FAB) untuk navigasi antarhalaman yang responsif.

## 🎬 Video Presentasi
[Link Presentasi : https://youtu.be/LqHliPLuPAc]