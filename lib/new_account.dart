import 'package:flutter/material.dart';
import 'package:pbl/succses_screen.dart';

class AkunBaru extends StatefulWidget {
  const AkunBaru({super.key});

  @override
  State<AkunBaru> createState() => _AkunBaruState();
}

class _AkunBaruState extends State<AkunBaru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(2, 236, 150, 0.612),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Container(
                child: Text("Pemasukan",style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.w600,color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(height: 400,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                      Column(
                        children: <Widget>[
                          Text("Uangmu",style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.w500),),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(height: 10,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 75)),
                      Text("Rp.0",style: TextStyle(color: Colors.white,fontSize: 64, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                width: 455,
                height: 255,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                             hintText: "Judul",
                          fillColor: Colors.white,
                        filled: true,)
                      ),
                      SizedBox(height: 16,),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                             hintText: "Jenis Pemasukan",
                          fillColor: Colors.white,
                        filled: true,),
                      ),
                      SizedBox(height: 15,),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1),
                              child: ElevatedButton(onPressed:() {
                                Navigator.push(
                              context,
                          MaterialPageRoute(builder: (context) => const SetupSelesai()),
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
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
