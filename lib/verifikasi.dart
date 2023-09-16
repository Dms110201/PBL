import 'package:flutter/material.dart';

class Verifikasi extends StatefulWidget {
  const Verifikasi({super.key});

  @override
  State<Verifikasi> createState() => _VerifikasiState();
}

class _VerifikasiState extends State<Verifikasi> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Verifikasi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 216,
              ),
              Center(
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Text("Masukkan Kode\nVerifikasi Anda", style: TextStyle(
                      fontSize: 36
                    ),
                  ),
                  ],
                ),
                
                ),
              )
           ]
          )
        )
      ),
    );
  }
}