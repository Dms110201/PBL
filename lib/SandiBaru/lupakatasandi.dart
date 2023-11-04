import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/SandiBaru/email_terkirim.dart';

class LupaKataSandi extends StatefulWidget {
  const LupaKataSandi({super.key});

  @override
  State<LupaKataSandi> createState() => _LupaKataSandiState();
}

class _LupaKataSandiState extends State<LupaKataSandi> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Lupa Kata Sandi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.1,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 6)),
                Text(
                  "Jangan khawatir.\nMasukkan email Anda dan\nkami akan mengirimkan Anda\ntautan untuk mengatur ulang\nkata sandi Anda.",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: appHitam),
                )
              ],
            ),
            SizedBox(
              height: mediaQuery.size.height * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                  decoration: InputDecoration(
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: appGrey2)),
                focusedBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: appGrey2)),
                hintText: "Email",
                fillColor: appPutih,
                filled: true,
              )),
            ),
            SizedBox(height: mediaQuery.size.height * 0.01),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmailTerkirim()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: appHijau,
                  minimumSize: const Size(600, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                child: const Text(
                  'Lanjutkan',
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
      )),
    );
  }
}
