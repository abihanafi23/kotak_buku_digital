import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kotak_buku_digital/utils/colors.dart';

class DetailProfil extends StatefulWidget {
  const DetailProfil({super.key});

  @override
  State<DetailProfil> createState() => _DetailProfilState();
}

class _DetailProfilState extends State<DetailProfil> {
  final CustomColors _customColors = CustomColors();
  final formKey = GlobalKey<FormState>();

  String profilUrl = "",
      namaDepan = "",
      namaBelakang = "",
      posisi = "",
      email = "",
      kataSandi = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _customColors.whiteBlue3,
      appBar: AppBar(
        title: const Text(
          "Detail Profil",
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
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Form(
                key: formKey,
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "URL Foto Profil",
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: _customColors.lightBlue))),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) => namaDepan = value,
                    decoration: InputDecoration(
                        labelText: "Nama Depan",
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: _customColors.lightBlue))),
                    validator: (value) =>
                        value!.isEmpty ? "Tidak boleh kosong" : null,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) => namaBelakang = value,
                    decoration: InputDecoration(
                        labelText: "Nama Belakang",
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: _customColors.lightBlue))),
                    validator: (value) =>
                        value!.isEmpty ? "Tidak boleh kosong" : null,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) => email = value,
                    decoration: InputDecoration(
                        labelText: "Email",
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: _customColors.lightBlue))),
                    validator: (value) =>
                        value!.contains('@') ? null : "Format tidak sesuai",
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: true,
                    onChanged: (value) => kataSandi = value,
                    decoration: InputDecoration(
                        labelText: "Kata Sandi",
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: _customColors.lightBlue))),
                    validator: (value) =>
                        value!.isEmpty ? "Tidak boleh kosong" : null,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Ketik Ulang Kata Sandi",
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: _customColors.lightBlue))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Tidak boleh Kosong";
                      } else if (value != kataSandi) {
                        return "Kata sandi tidak sesuai";
                      } else {
                        return null;
                      }
                    },
                  ),
                ]),
              ),
              const SizedBox(height: 25),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    formKey.currentState!.validate() ? Get.back() : null;
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(_customColors.lightBlue2)),
                  child: const Text(
                    "Ubah",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
