import 'package:flutter/material.dart';

class DaftarScreen extends StatelessWidget {
  const DaftarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Center(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/gambar.png',
                  height: 340,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Atur kendali penuh \n uang Anda',
                      style: TextStyle(color: Colors.black, fontSize: 25)
                    )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Jadilah pengelola uang Anda sendiri \n dan manfaatkan setiap sennya',
                    style: TextStyle(color: Color.fromARGB(255, 146, 146, 146), fontSize: 12)
                  )),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(onPressed:() {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 145, 77),
                    minimumSize: const Size(400, 40),
                    shape: const StadiumBorder()
                  ),
                  child: const Text('Daftar'),
                  ),
                  ElevatedButton(onPressed:() {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 218, 216, 216),
                    minimumSize: const Size(400, 40),
                    shape: const StadiumBorder()
                  ),
                  child: const Text('Masuk',style: TextStyle(color: Color.fromARGB(171, 0, 160, 101)),
                  ),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}