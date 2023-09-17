import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25,),
              const Text('Masuk',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 164,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                        hintText: "Nama",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                        hintText: "Kata Sandi",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              Padding(
               padding: const EdgeInsets.all(35),
               child: ElevatedButton(onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Setup1()),
                  );
               },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 168, 107, 100),
                      minimumSize: const Size(600, 50),
                    ),
                    child: const Text('Masuk',
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
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
             style: TextStyle(color: Color.fromRGBO(0, 168, 107, 100),
             fontWeight: FontWeight.w900
             ),
             ),
             ),
           const SizedBox(height: 38),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Belum punya akun?",
                  style: TextStyle(color: Color.fromRGBO(145, 145, 159, 100))),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                         context,
                          MaterialPageRoute(builder: (context) => const Daftar()),
                        );
                      },
                    child: const Text("Mendaftar",
                    style: TextStyle(color: Color.fromRGBO(13, 14, 15, 100),
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