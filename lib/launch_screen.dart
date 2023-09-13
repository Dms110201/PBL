import 'package:flutter/material.dart';
import 'package:pbl/daftar_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
      Future.delayed(const Duration(seconds: 3)). then((value) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const DaftarScreen(),
        ),
        (route) => false);
      });
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 199, 126),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/uangku.png'),
            SizedBox(
              child: Center(
                child: Text('Hitung Pengeluaran UangMu',
                style: GoogleFonts.robotoFlex(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w800
                ),),
              ),
            ),
            Center(
              child: Text('Dengan UangKu',
              style: GoogleFonts.robotoFlex(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w800
              ),),
            ),
        ],
      ),
    );

  }
}