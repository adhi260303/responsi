import 'package:flutter/material.dart';
import 'lupa.dart'; // Import halaman lupa password
import 'register.dart'; // Import halaman daftar
import 'home.dart'; // Import halaman home

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key); // Tambahkan parameter key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Mengatur latar belakang menjadi baby pink
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Mengatur untuk memposisikan logo di atas
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
                "MASUK", // Teks besar di bawah logo
                style: TextStyle(
                  fontSize: 32, // Ukuran font besar
                  fontWeight: FontWeight.bold, // Menebalkan teks
                ),
              ),
            ),
            SizedBox(height: 40), // Ruang antara teks dan form
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                fillColor: Colors.white, // Mengatur warna latar belakang menjadi putih
                filled: true, // Mengaktifkan pengisian warna latar belakang
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                fillColor: Colors.white, // Mengatur warna latar belakang menjadi putih
                filled: true, // Mengaktifkan pengisian warna latar belakang
              ),
            ),
            SizedBox(height: 20),
            // Menambahkan baris untuk teks di bagian bawah
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Belum punya akun?", // Teks yang ditampilkan
                      style: TextStyle(fontSize: 16), // Ukuran font
                    ),
                    SizedBox(height: 5), // Ruang antara "Belum punya akun?" dan "Daftar"
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman daftar
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterScreen()),
                        );
                      },
                      child: Text(
                        "Daftar", // Teks untuk mendaftar
                        style: TextStyle(
                          color: Colors.lightBlue, // Warna biru
                          fontSize: 16, // Ukuran font
                          fontWeight: FontWeight.bold, // Menebalkan teks
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Navigasi ke halaman lupa password
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LupaPasswordScreen()),
                    );
                  },
                  child: Text(
                    "Lupa password?", // Teks untuk lupa password
                    style: TextStyle(
                      color: Colors.lightBlue, // Warna biru muda
                      fontSize: 16, // Ukuran font
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40), // Tambahkan jarak antara baris teks dan tombol
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman Home
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()), // Arahkan ke HomeScreen
                );
              },
              child: Text("Masuk"), // Teks tombol login
            ),
          ],
        ),
      ),
    );
  }
}
