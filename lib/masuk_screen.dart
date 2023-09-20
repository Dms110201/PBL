import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/daftar_awal.dart';
import 'package:pbl/lupakatasandi.dart';
import 'package:pbl/setup1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final mediaQuary = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appPutih,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
               Text('Masuk',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
               SizedBox(height: mediaQuary.size.height * 0.1),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 16),
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
           SizedBox(height: 20),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                child: ElevatedButton(onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Setup1()),
                    );
                },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appHijau,
                        minimumSize: const Size(600, 50,),
                      ),
                      child: const Text('Masuk',
                        style: TextStyle(color: appPutih,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                    ),
                  ),
                  ),
                          ),
              ),
            TextButton(onPressed: () {
              Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => const LupaKataSandi()),
                        );
            },
            child: const Text('Lupa Kata Sandi?',
              style: TextStyle(color: appHijau,
                fontWeight: FontWeight.w900
                ),
              ),
            ),
           SizedBox(height: mediaQuary.size.height * 0.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Belum punya akun?",
                  style: TextStyle(color: appGrey2)),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => const Daftar()),
                        );
                      },
                    child: const Text("Mendaftar",
                    style: TextStyle(color: appHitam,
                    fontWeight: FontWeight.w900)),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}