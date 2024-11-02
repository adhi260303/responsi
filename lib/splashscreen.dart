import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart'; 
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key); // Tambahkan parameter key

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Memanggil fungsi untuk menunggu beberapa detik
    Timer(Duration(seconds: 5), () {
      // Setelah waktu habis, navigasikan ke halaman login
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(), // Ganti dengan LoginScreen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'), // Logo splash screen
            SizedBox(height: 20),
            CircularProgressIndicator(), // Indikator loading
          ],
        ),
      ),
    );
  }
}
