import 'package:flutter/material.dart';
import 'package:tugas_mobile_lanjut/screens/home_screen.dart';
import 'package:tugas_mobile_lanjut/screens/login_screen.dart';
import 'package:tugas_mobile_lanjut/screens/akun_screen.dart';
import 'package:tugas_mobile_lanjut/screens/splash_screen.dart';
import 'package:tugas_mobile_lanjut/screens/register_screen.dart';
import 'package:tugas_mobile_lanjut/screens/ubah_profil.dart';
import 'package:tugas_mobile_lanjut/screens/lupa_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/lupapassword': (context) => const LupaPasswordScreen(),
        '/ubahprofil': (context) => const UbahProfil(),
        '/akun': (context) => const AkunScreen(),
      },
    );
  }
}
