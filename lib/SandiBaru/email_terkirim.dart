import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/SandiBaru/aturulangsandi.dart';

class EmailTerkirim extends StatefulWidget {
  const EmailTerkirim({super.key});

  @override
  State<EmailTerkirim> createState() => _EmailTerkirimState();
}

class _EmailTerkirimState extends State<EmailTerkirim> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appPutih,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mediaQuery.size.height * 0.05,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 200, vertical: 5)),
            Image.asset(
              'assets/images/surat.png',
              height: 350,
              width: 400,
            ),
            SizedBox(height: mediaQuery.size.height * 0.02),
            Center(
              child: Column(
                children: const [
                  Text(
                    "Email Anda sedang dikirim",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Periksa email Anda test@test.com dan\nikuti instruksi untuk mengatur ulang kata\nsandi Anda",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaQuery.size.height * 0.02),
            Padding(
              padding: const EdgeInsets.all(17),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AturUlangSandi()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: appHijau,
                    minimumSize: const Size(600, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  'Kembali Masuk',
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
    );
  }
}
