import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class Pengeluaran extends StatefulWidget {
  const Pengeluaran({super.key});

  @override
  State<Pengeluaran> createState() => _PengeluaranState();
}

class _PengeluaranState extends State<Pengeluaran> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appRed
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pengeluaran",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: appPutih),
                    ),
                  ],
                ),
                SizedBox(height: mediaQuery.size.height * 0.1),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Berapa Banyak ?",
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
                Expanded(child: SizedBox(height: 15,)),
                Container(
                  decoration: BoxDecoration(
                    color: appPutih,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  height: mediaQuery.size.height * 0.30,
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
                            hintText: "Jenis Pengluaran",
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
                       SizedBox(height: mediaQuery.size.height * 0.0,),
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