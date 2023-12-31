import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget popUpMenu() {
  return PopupMenuButton(
      itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('/dfbuku');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.featured_play_list),
                      Text("Daftar Buku"),
                    ],
                  ),
                )),
            PopupMenuItem(
                value: 2,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('/dprofil');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.note_alt_rounded),
                      Text("Detail Profil"),
                    ],
                  ),
                )),
            PopupMenuItem(
                value: 3,
                child: TextButton(
                  onPressed: () {
                    Get.offAllNamed('/');
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.delete_forever),
                      Text("Hapus Akun"),
                    ],
                  ),
                )),
          ]);
}

Widget cardDaftarBuku({required String judul, required String deskripsi}) {
  return Card(
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(
            Icons.book,
            size: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 200,
                child: Text(
                  deskripsi,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
          TextButton(
              onPressed: () {
                Get.toNamed('/dtbuku');
              },
              child: const Text("Detail"))
        ],
      ),
    ),
  );
}
