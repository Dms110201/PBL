import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class Pemasukan extends StatefulWidget {
  const Pemasukan({super.key});

  @override
  State<Pemasukan> createState() => _PemasukanState();
}

class _PemasukanState extends State<Pemasukan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appHijau
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pemasukan",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: appPutih),
                    ),
                  ],
                ),
                SizedBox(height: 407,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Dapet Berapa ?",
                                style: TextStyle(
                                color: appPutih.withOpacity(0.7),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),),
                          SizedBox(height: 10,),
                              Text("Rp.0",style: TextStyle(
                                color: appPutih,
                                fontSize: 67,
                                fontWeight: FontWeight.w500),),
                        ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  decoration: BoxDecoration(
                    color: appPutih,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  height: 260,
                  child: Center(
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
                            hintText: "Jenis Pemasukan",
                          fillColor: appPutih,
                        filled: true,)
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: appGrey2)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: appGrey)),
                            hintText: "Deskripsi",
                          fillColor: appPutih,
                        filled: true,),
                      ),
                      const SizedBox(height: 20,),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                              child: ElevatedButton(onPressed:() {},
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
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}