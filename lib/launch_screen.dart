import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/daftar_screen.dart';



class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
      Future.delayed(const Duration(seconds: 5)). then((value) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const DaftarScreen(),
        ),
        (route) => false);
      });
    return Scaffold(
      backgroundColor: appHijau,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/uangku.png',
            height: 300,
            width: 300,
            ),
          ],
        ),
      ),
    );

  }
}