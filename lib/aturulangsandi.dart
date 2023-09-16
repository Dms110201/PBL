import 'package:flutter/material.dart';
import 'package:pbl/masuk_screen.dart';

class AturUlangSandi extends StatefulWidget {
  const AturUlangSandi({super.key});

  @override
  State<AturUlangSandi> createState() => _AturUlangSandiState();
}

class _AturUlangSandiState extends State<AturUlangSandi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 21,),
              Text("Atur Ulang Kata Sandi", style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 67,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                        hintText: "Kata Sandi Baru",
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
                        hintText: "Ketik Ulang Kata Sandi",
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 16),
                Padding(
               padding: const EdgeInsets.all(17),
               child: ElevatedButton(onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                  );
               },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 168, 107, 100),
                      minimumSize: const Size(600, 50),
                    ),
                    child: const Text('Lanjut',
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                  ),
                ),
                ),
             ),

            ],
          ),
        )
      ),
    );
  }
}