 import 'package:flutter/material.dart';
import 'package:pbl/daftar_screen.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute
      (builder: (context) => const DaftarScreen(),
      ),
      (route) => false);
      });
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 182, 238, 199),
      body: Stack(children:[
        Image.asset('assets/images/uangku.png',height: 200),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset('assets/images/gambar.png',
          width: 413,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "Hitung Pengeluaran UangMu\nDengan UangKu",
              style: TextStyle(fontSize: 30)
          ))
          ],
        )
        )
      ]),
    );
  }
}