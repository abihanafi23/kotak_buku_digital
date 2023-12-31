import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kotak_buku_digital/pages/daftar_buku.dart';
import 'package:kotak_buku_digital/pages/dashboard.dart';
import 'package:kotak_buku_digital/pages/detail_buku.dart';
import 'package:kotak_buku_digital/pages/detail_profil.dart';
import 'package:kotak_buku_digital/pages/login_page.dart';
import 'package:kotak_buku_digital/pages/register_page.dart';
import 'package:kotak_buku_digital/pages/tambah_buku.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Kotak Buku Digital",
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const LoginPage()),
        GetPage(name: '/register', page: () => const RegisterPage()),
        GetPage(name: '/dashboard', page: () => const Dashboard()),
        GetPage(name: '/dprofil', page: () => const DetailProfil()),
        GetPage(name: '/dfbuku', page: () => const DaftarBuku()),
        GetPage(name: '/dtbuku', page: () => const DetailBuku()),
        GetPage(name: '/tambah', page: () => const TambahBuku())
      ],
    );
  }
}
