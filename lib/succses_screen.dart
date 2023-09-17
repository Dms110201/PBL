import 'package:flutter/material.dart';
import 'package:pbl/home.dart';

class SetupSelesai extends StatefulWidget {
  const SetupSelesai({super.key});

  @override
  State<SetupSelesai> createState() => _SetupSelesaiState();
}

class _SetupSelesaiState extends State<SetupSelesai> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)). then((value) {
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const Home(),
        ),
        (route) => false);
      });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/centang.png',
            height: 200,
            width: 200,
            ),
            const Center(
              child: Column(
                children: [
                  Text("UangMu Siap", style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.w400),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}