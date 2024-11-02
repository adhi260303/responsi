import 'package:flutter/material.dart';
import 'home.dart';
import 'akun.dart';
import 'login.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Kelola Akun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
            ),
            SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nama', border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nomor Telepon', border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Alamat', border: OutlineInputBorder()),
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Simpan'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Akun'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          } else if (index == 1) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const AkunScreen()));
          } else if (index == 2) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          }
        },
      ),
    );
  }
}
