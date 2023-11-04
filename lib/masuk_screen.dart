import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/AkunBaru/daftar_awal.dart';
import 'package:pbl/SandiBaru/lupakatasandi.dart';
import 'package:pbl/setupaccount.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appPutih,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Masuk',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: mediaQuery.size.height * 0.1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appGrey2)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: appGrey2)),
                  hintText: "Nama",
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
                  hintText: "Kata Sandi",
                  fillColor: appPutih,
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * 0.03),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SetupAccount()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: appHijau,
                      minimumSize: const Size(
                        600,
                        50,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Masuk',
                    style: TextStyle(
                      color: appPutih,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LupaKataSandi()),
                );
              },
              child: const Text(
                'Lupa Kata Sandi?',
                style: TextStyle(
                    color: appHijau, fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            SizedBox(height: mediaQuery.size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?",
                    style: TextStyle(color: appGrey2, fontSize: 16)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Daftar()),
                    );
                  },
                  child: const Text("Mendaftar",
                      style: TextStyle(
                          color: appHitam,
                          fontWeight: FontWeight.w900,
                          fontSize: 16)),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
