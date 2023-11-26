import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/Login/masuk_screen.dart';

class AturUlangSandi extends StatefulWidget {
  const AturUlangSandi({super.key});

  @override
  State<AturUlangSandi> createState() => _AturUlangSandiState();
}

class _AturUlangSandiState extends State<AturUlangSandi> {
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appPutih,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
        children: [
          SizedBox(
            height: mediaQuery.size.height * 0.05,
          ),
          Text(
            "Atur Ulang Kata Sandi",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: mediaQuery.size.height * 0.1),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appGrey2)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appGrey2)),
                hintText: "Kata Sandi Baru",
                fillColor: appPutih,
                filled: true,
              ),
            ),
          ),
          SizedBox(height: mediaQuery.size.height * 0.03),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appGrey2)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: appGrey2)),
                hintText: "Ketik Ulang Kata Sandi",
                fillColor: appPutih,
                filled: true,
              ),
            ),
          ),
          SizedBox(height: mediaQuery.size.height * 0.04),
          Padding(
            padding: const EdgeInsets.all(17),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(0, 168, 107, 100),
                  minimumSize: const Size(600, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                'Lanjut',
                style: TextStyle(
                  color: appPutih,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
          ),
        ),
      ),
    );
  }
}
