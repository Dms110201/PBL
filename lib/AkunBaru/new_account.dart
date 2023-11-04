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
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: appHijau),
          ),
          SafeArea(
              child: Column(
            children: [
              Padding(padding: EdgeInsets.all(15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pemasukan",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: appPutih),
                  ),
                ],
              ),
              Expanded(child: SizedBox(height: mediaQuery.size.height * 0.5)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Uangku",
                          style: TextStyle(
                              color: appPutih.withOpacity(0.7),
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Rp.0",
                          style: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.bold,
                              color: appPutih),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2,),
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
                       SizedBox(height: mediaQuery.size.height * 0.02,),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                              child: ElevatedButton(onPressed:() {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SetupSelesai()),
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
          ))
        ],
      ),
    );
  }
}
