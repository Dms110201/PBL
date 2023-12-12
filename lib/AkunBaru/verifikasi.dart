import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/Login/masuk_screen.dart';

class Verifikasi extends StatefulWidget {
  const Verifikasi({super.key});

  @override
  State<Verifikasi> createState() => _VerifikasiState();
}

class _VerifikasiState extends State<Verifikasi> {

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.04,
              ),
              Text(
                "Verifikasi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 180,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: Row(
                    children: [
                      Text(
                        "Masukkan Kode\nVerifikasi Anda",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)
                  ),
                  SizedBox(
                    height: 60,
                    width: 30,
                    child: TextField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context). textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)
                  ),
                  SizedBox(
                    height: 60,
                    width: 40,
                    child: TextField(
                       onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context). textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)
                  ),
                  SizedBox(
                    height: 60,
                    width: 40,
                    child: TextField(
                       onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context). textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)
                  ),
                  SizedBox(
                    height: 60,
                    width: 40,
                    child: TextField(
                       onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context). textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)
                  ),
                  SizedBox(
                    height: 60,
                    width: 40,
                    child: TextField(
                       onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context). textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 10)
                  ),
                  SizedBox(
                    height: 60,
                    width: 40,
                    child: TextField(
                       onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context). textTheme.titleLarge,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Text(
                        "Kami mengirimkan kode verifikasi ke Anda\nKamu bisa periksa Gmail Anda",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text('Saya tidak menerima kodenya? Kirim lagi',
                          style: TextStyle(color: appHijau,
                          fontWeight: FontWeight.bold, fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: appHijau,
                          decorationThickness: 3,
                          decorationStyle: TextDecorationStyle.solid),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               Padding(
               padding: const EdgeInsets.all(20.0),
               child: ElevatedButton(onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                  );
               },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appHijau,
                      minimumSize: const Size(600, 50),
                    ),
                    child: const Text('Verifikasi',
                      style: TextStyle(color: appPutih,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                  ),),
                ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
