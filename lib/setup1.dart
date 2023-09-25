import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/new_account.dart';

class Setup1 extends StatefulWidget {
  const Setup1({super.key});

  @override
  State<Setup1> createState() => _Setup1State();
}

class _Setup1State extends State<Setup1> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.09,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 200)),
              Text(
                "Ayo siapkan akun\nAnda!",
                style: TextStyle(
                  fontSize: 47,
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.05,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      children: [
                        Text(
                          "Masukan Jumlah Uang Mu",
                          style: TextStyle(
                              fontSize: 14,
                              color: appHitam,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.55,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AkunBaru()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 168, 107, 100),
                      minimumSize: const Size(370, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Ayo',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
