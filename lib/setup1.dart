import 'package:flutter/material.dart';
import 'package:pbl/new_account.dart';

class Setup1 extends StatefulWidget {
  const Setup1({super.key});

  @override
  State<Setup1> createState() => _Setup1State();
}

class _Setup1State extends State<Setup1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Column(children: [
                const SizedBox(height: 120,),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 200)),
                const Text("Ayo siapkan akun\nAnda!",style: TextStyle(fontSize: 47,),
                ),
                const SizedBox(
                height: 500,
              ),
               Padding(
               padding: const EdgeInsets.all(20.0),
               child: ElevatedButton(onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AkunBaru()),
                  );
               },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 168, 107, 100),
                      minimumSize: const Size(370, 50),
                    ),
                    child: const Text('Ayo',
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                  ),),
                ),
             ),
              ],
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}