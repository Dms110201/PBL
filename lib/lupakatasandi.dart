import 'package:flutter/material.dart';
import 'package:pbl/email_terkirim.dart';

class LupaKataSandi extends StatefulWidget {
  const LupaKataSandi({super.key});

  @override
  State<LupaKataSandi> createState() => _LupaKataSandiState();
}

class _LupaKataSandiState extends State<LupaKataSandi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30
              ),
              const Text("Lupa Kata Sandi",
              style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 90,),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Text("Jangan khawatir.\nMasukkan email Anda dan\nkami akan mengirimkan Anda\ntautan untuk mengatur ulang\nkata sandi Anda.",
                  style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                    ],
                 ),
                 const SizedBox(height: 17,),
                 const Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                 child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                        hintText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                  )
                 ),
                ),
                const SizedBox(height: 16),
                Padding(
               padding: const EdgeInsets.all(16),
               child: ElevatedButton(onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EmailTerkirim()),
                  );
               },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 168, 107, 100),
                      minimumSize: const Size(600, 50),
                    ),
                    child: const Text('Lanjutkan',
                      style: TextStyle(color: Colors.white,
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