import 'package:flutter/material.dart';
import 'package:pbl/BottomNav/bottomnav.dart';
import 'package:pbl/Color/color.dart';

class Export extends StatefulWidget {
  const Export({super.key});

  @override
  State<Export> createState() => _ExportState();
}

class _ExportState extends State<Export> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: appPutih),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 90),
              child: Column(
                children: [
                  Image.asset('assets/images/exporticon.png'),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                      width: 400,
                      height: 180,
                      child: SingleChildScrollView(
                        child: Text(
                          "Periksa email Anda, kami kirimkan laporan keuangannya. Dalam kasus tertentu, mungkin diperlukan waktu lebih lama, bergantung pada jangka waktu dan volume aktivitas.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQuery.size.height * 0.07),
                  ElevatedButton(
                      onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNav()),
                  );},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appHijau,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(350, 50),
                      ),
                      child: Text(
                        'Kembali Ke Menu',
                        style: TextStyle(fontSize: 20, color: appPutih),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
