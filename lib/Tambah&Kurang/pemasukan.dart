import 'package:flutter/material.dart';
import 'package:pbl/BottomNav/bottomnav.dart';
import 'package:pbl/Color/color.dart';

class Pemasukan extends StatefulWidget {
  const Pemasukan({super.key});

  @override
  State<Pemasukan> createState() => _PemasukanState();
}

class _PemasukanState extends State<Pemasukan> {
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
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
                SizedBox(height: mediaQuery.size.height * 0.02),
                 Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Dapet Berapa ?",
                        labelStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: appPutih.withOpacity(0.7),
                        ),
                        hintText: "Rp.0",
                        hintStyle: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w500,
                          color: appGrey,
                        ),
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      keyboardType: TextInputType.number,
                      controller: controller,
                      style: TextStyle(color: appPutih, fontSize: 60),
                    ),
                  ],
                ),
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
                       SizedBox(height: mediaQuery.size.height * 0.02,),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                              child: ElevatedButton(onPressed:() {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNav()),
                          );},
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