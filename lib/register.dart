import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                "DAFTAR", // Teks besar di bawah logo
                style: TextStyle(
                  fontSize: 32, // Ukuran font besar
                  fontWeight: FontWeight.bold, // Menebalkan teks
                ),
              ),
            ),
            SizedBox(height: 40), // Ruang antara teks dan form
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Konfirmasi Password',
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), // Ruang sebelum teks informasi akun
            Text(
              "Sudah memiliki akun?", // Teks informasi
              style: TextStyle(fontSize: 16), // Ukuran font
            ),
            SizedBox(height: 5), // Ruang sebelum teks Masuk
            GestureDetector(
              onTap: () {
                // Navigasi ke halaman login
                Navigator.pop(context); // Kembali ke halaman sebelumnya (login)
              },
              child: Text(
                "Masuk", // Teks untuk kembali ke halaman login
                style: TextStyle(
                  color: Colors.lightBlue, // Warna biru muda
                  fontSize: 16, // Ukuran font
                  fontWeight: FontWeight.bold, // Menebalkan teks
                ),
              ),
            ),
            SizedBox(height: 40), // Ruang sebelum tombol daftar
            ElevatedButton(
              onPressed: () {
                // Logika untuk melakukan registrasi di sini
              },
              child: Text("Daftar"), // Teks tombol untuk mendaftar
            ),
          ],
        ),
      ),
    );
  }
}
