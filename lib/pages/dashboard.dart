import 'package:flutter/material.dart';
import 'package:kotak_buku_digital/utils/colors.dart';
import 'package:kotak_buku_digital/utils/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final CustomColors _customColors = CustomColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _customColors.whiteBlue3,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                elevation: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      _customColors.darkBlue2,
                      _customColors.lightBlue2
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://sm.askmen.com/t/askmen_in/article/f/facebook-p/facebook-profile-picture-affects-chances-of-gettin_fr3n.1200.jpg"),
                        radius: 60,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Halo, Selamat Datang"),
                          Text("UserName",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.w500)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.book,
                            size: 100,
                          ),
                          Column(
                            children: [
                              Text(
                                "4",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Total Buku")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.email,
                            size: 100,
                          ),
                          Column(
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("userEmail@user.com")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.link_rounded,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            "Tanggal Bergabung",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("23 Desember 2023")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.note_alt_rounded,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Terakhir Diubah",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("23 Desember 2023")
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: popUpMenu(),
      ),
    );
  }
}
