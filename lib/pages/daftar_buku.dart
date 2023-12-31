import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kotak_buku_digital/utils/colors.dart';
import 'package:kotak_buku_digital/utils/widgets.dart';

class DaftarBuku extends StatefulWidget {
  const DaftarBuku({super.key});

  @override
  State<DaftarBuku> createState() => _DaftarBukuState();
}

class _DaftarBukuState extends State<DaftarBuku> {
  final CustomColors _customColors = CustomColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _customColors.whiteBlue3,
      appBar: AppBar(
        title: const Text(
          "Daftar Buku",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            _customColors.blue,
            _customColors.lightBlue,
            _customColors.darkBlue2
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        children: [
          cardDaftarBuku(
              judul: "Dasar Pemrogramman Dart",
              deskripsi: "Buku yang berisi tentang bahasa pemrogramman Dart"),
          cardDaftarBuku(
              judul: "Pengenalan Framework",
              deskripsi: "Pengertian framework, macam-macam framework, dll"),
          cardDaftarBuku(
              judul: "GetX Package", deskripsi: "Flutter GetX Package"),
          cardDaftarBuku(
              judul: "Dio Package",
              deskripsi: "Connect to API with Dio package"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/tambah');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
