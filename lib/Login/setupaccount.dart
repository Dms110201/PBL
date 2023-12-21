import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/AkunBaru/new_account.dart';

class SetupAccount extends StatefulWidget {
  const SetupAccount({super.key});

  @override
  State<SetupAccount> createState() => _SetupAccountState();
}

class _SetupAccountState extends State<SetupAccount> {
  @override
  Widget build(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appPutih,
      body: SingleChildScrollView(
        child: SafeArea(
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
                                fontSize: 17,
                                color: appHitam,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.45,
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
                        backgroundColor: appHijau,
                        minimumSize: const Size(370, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Ayo',
                      style: TextStyle(
                        color:appPutih,
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
      ),
    );
  }
}
