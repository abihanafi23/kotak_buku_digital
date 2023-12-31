import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kotak_buku_digital/utils/colors.dart';

class DetailBuku extends StatefulWidget {
  const DetailBuku({super.key});

  @override
  State<DetailBuku> createState() => _DetailBukuState();
}

class _DetailBukuState extends State<DetailBuku> {
  final CustomColors _customColors = CustomColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _customColors.whiteBlue3,
      appBar: AppBar(
        title: const Text(
          "Detail Buku",
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Judul Buku",
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: _customColors.lightBlue))),
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                  labelText: "Deskripsi",
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: _customColors.lightBlue))),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(_customColors.lightBlue),
                    ),
                    child: const Text(
                      "Ubah",
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                    ),
                    child: const Text(
                      "Hapus",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
