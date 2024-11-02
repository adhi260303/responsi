import 'package:flutter/material.dart';

class LupaPasswordScreen extends StatelessWidget {
  const LupaPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Mengatur latar belakang menjadi putih
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Menambahkan logo di tengah atas
            Center(
              child: Image.asset(
                'assets/logo.png', // Ganti dengan nama file logo Anda
                height: 250, // Mengatur tinggi logo
                width: 250, // Mengatur lebar logo
              ),
            ),
            SizedBox(height: 20), // Ruang antara logo dan teks
            Center(
              child: Text(
                "LUPA PASSWORD", // Teks besar di bawah logo
                style: TextStyle(
                  fontSize: 32, // Ukuran font besar
                  fontWeight: FontWeight.bold, // Menebalkan teks
                ),
              ),
            ),
            SizedBox(height: 20), // Ruang antara teks dan deskripsi
            Text(
              "Masukkan email anda dan tunggu kode etik akan dikirimkan", // Deskripsi
              style: TextStyle(
                fontSize: 16, // Ukuran font sedang
              ),
              textAlign: TextAlign.center, // Menyelaraskan teks ke tengah
            ),
            SizedBox(height: 40), // Ruang sebelum input email
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40), // Ruang sebelum tombol kirim
            ElevatedButton(
              onPressed: () {
                // Logika untuk mengirim email atau validasi di sini
              },
              child: Text("Kirim"),
            ),
          ],
        ),
      ),
    );
  }
}
