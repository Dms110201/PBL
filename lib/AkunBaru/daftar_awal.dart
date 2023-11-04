import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/masuk_screen.dart';
import 'package:pbl/AkunBaru/verifikasi.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appPutih,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Daftar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(child: SizedBox(height: mediaQuery.size.height * 0.1)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appGrey2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appGrey2)),
                    hintText: "Nama",
                    fillColor: appPutih,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.size.height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appGrey2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appGrey2)),
                    hintText: "Email",
                    fillColor: appPutih,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.size.height * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appGrey2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appGrey2)),
                    hintText: "Kata Sandi",
                    fillColor: appPutih,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: mediaQuery.size.height * 0.03),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue;
                      });
                    },
                  ),
                  Text(
                    "Dengan mendaftar, Anda menyetujui\nKetentuan Layanan dan Kebijakan Privasi",
                    style: TextStyle(fontSize: 16, color: appHitam),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(9),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Verifikasi()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: appHijau,
                            minimumSize: Size(360, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: Text(
                          'Daftar',
                          style: TextStyle(
                              color: appPutih,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: mediaQuery.size.height * 0.2),
              Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      "Sudah memiliki akun?",
                      style: TextStyle(color: appGrey2, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login()),
                          );
                        },
                        child: Text(
                          "Gabung",
                          style: TextStyle(color: appHitam, fontSize: 16),
                        )),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
