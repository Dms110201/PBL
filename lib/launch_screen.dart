import 'package:flutter/material.dart';
import 'package:pbl/daftar_awal.dart';



class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
      Future.delayed(const Duration(seconds: 5)). then((value) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Daftar(),
        ),
        (route) => false);
      });
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 139, 55),
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