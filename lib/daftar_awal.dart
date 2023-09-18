import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/verifikasi.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
   bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPutih,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Daftar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 100,
              ),
              const Padding(
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
              const SizedBox(
                height: 20,
              ),
              const Padding(
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
              const SizedBox(
                height: 20,
              ),
              const Padding(
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
              const SizedBox(
                height: 20,
              ),
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
                  const Text("Dengan mendaftar, Anda menyetujui\nKetentuan Layanan dan Kebijakan Privasi",
                  style: TextStyle(fontSize: 16,color: appHitam),
                  ),
                ],
              ),
              Padding(
               padding: const EdgeInsets.all(20.0),
               child: ElevatedButton(
                onPressed:() {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Verifikasi()),
                  );
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appHijau,
                      minimumSize: const Size(600, 50),
                    ),
                    child: const Text('Daftar',
                      style: TextStyle(color: appPutih,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                  ),),
                ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
