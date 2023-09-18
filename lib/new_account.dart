import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
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
      backgroundColor: appHijau,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              const Text("Pemasukan",style: TextStyle(fontSize: 18,
              fontWeight: FontWeight.w600,color: appPutih),
              ),
              const Row(
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(height: 433,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                      Column(
                        children: <Widget>[
                          Text("Uangmu",style: TextStyle(color: appPutih,fontSize: 18, fontWeight: FontWeight.w500),),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  Column(
                    children: <Widget>[
                      SizedBox(height: 10,),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 75)),
                      Text("Rp.0",style: TextStyle(color: appPutih,fontSize: 64, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 7),
              Container(
                decoration:  BoxDecoration(
                  color: appPutih,
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
                            borderSide: BorderSide(color: appGrey2)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: appGrey)),
                            hintText: "Judul",
                          fillColor: appPutih,
                        filled: true,)
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: appGrey2)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: appGrey)),
                            hintText: "Jenis Pemasukan",
                          fillColor: appPutih,
                        filled: true,),
                      ),
                      const SizedBox(height: 15,),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                              child: ElevatedButton(onPressed:() {
                                Navigator.push(
                              context,
                          MaterialPageRoute(builder: (context) => const SetupSelesai()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                              backgroundColor: appHijau,
                          minimumSize: const Size(600, 50),
                        ),
                          child: const Text('Lanjut',
                              style: TextStyle(color: appPutih,
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
