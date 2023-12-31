import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotak_buku_digital/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final CustomColors _customColors = CustomColors();
  late String email, kataSandi;
  final dio = Dio();
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: _customColors.blue,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              _customColors.blue,
              _customColors.lightBlue,
              _customColors.darkBlue2
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(
                  vertical: 0.175 * deviceHeigth,
                  horizontal: 0.05 * deviceWidth),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Masuk",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.bold, fontSize: 36)),
                      Divider(thickness: 5, color: _customColors.lightBlue2),
                      const SizedBox(
                        height: 50,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              onChanged: (value) => email = value,
                              cursorColor: _customColors.lightBlue2,
                              decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: _customColors.lightBlue)),
                                  hintText: "Masukkan Email",
                                  prefixIcon: const Icon(Icons.email_rounded),
                                  prefixIconColor: _customColors.lightBlue2),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email masih kosong";
                                } else if (!(value.contains('@'))) {
                                  return "Format tidak sesuai";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              onChanged: (value) => kataSandi = value,
                              obscureText: true,
                              cursorColor: _customColors.lightBlue,
                              decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: _customColors.lightBlue)),
                                  hintText: "Masukkan Kata Sandi",
                                  prefixIcon: const Icon(Icons.lock_open),
                                  prefixIconColor: _customColors.lightBlue2),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Kata sandi masih kosong";
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Belum Punya Akun ?"),
                          TextButton(
                              onPressed: () {
                                Get.toNamed('/register');
                              },
                              child: Text(
                                "Daftar",
                                style: TextStyle(color: _customColors.blue),
                              ))
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          // String result = await Login.login(email, kataSandi);
                          // if (result.isNotEmpty) {
                          //   print(result);
                          // }
                          Get.offNamed('/dashboard');
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              _customColors.lightBlue2)),
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
