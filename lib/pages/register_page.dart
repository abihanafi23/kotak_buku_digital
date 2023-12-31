import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kotak_buku_digital/utils/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final CustomColors _customColors = CustomColors();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    String namaDepan = "", namaBelakang = "", email = "", kataSandi = "";
    return Scaffold(
      backgroundColor: _customColors.whiteBlue3,
      appBar: AppBar(
        title: const Text(
          "Daftar",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Form(
              key: formKey,
              child: Column(children: [
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
                  formKey.currentState!.validate() ? Get.toNamed('/') : null;
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(_customColors.lightBlue2)),
                child: const Text(
                  "Daftar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
