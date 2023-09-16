import 'package:flutter/material.dart';

class DaftardanSignup extends StatefulWidget {
  const DaftardanSignup({super.key});

  @override
  State<DaftardanSignup> createState() => _DaftardanSignupState();
}

class _DaftardanSignupState extends State<DaftardanSignup> {
   bool? isChecked = false;
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Daftar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 100,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue;
                      });
                    },
                  ),
                  const Text("Dengan mendaftar, Anda menyetujui\nKetentuan Layanan dan Kebijakan Privasi",style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Padding(
               padding: const EdgeInsets.all(20.0),
               child: ElevatedButton(onPressed:() {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 168, 107, 100),
                      minimumSize: const Size(600, 50),
                    ),
                    child: const Text('Masuk',
                      style: TextStyle(color: Colors.white,
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
