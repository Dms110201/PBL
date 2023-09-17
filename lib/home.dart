import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                appPutihKuning,
                appPutih.withOpacity(0.90),
              ]
             ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(),
                      Row(
                        children: [
                          Icon(Icons.keyboard_arrow_down_outlined, color: appHitam,),
                          Text("Oktober"),
                        ],
                      ),
                      IconButton(onPressed: () {},
                       icon: Icon(
                        Icons.notifications_active,
                         color: appHitam)
                      ),

                    ],
                  ),
                        ),
                        SizedBox(
                            height: 5,
                            ),
                                   Text("UangKu",style: TextStyle(fontSize: 14,
                                        color: appGrey2),),
                                    SizedBox(height: 20,),
                             Text("Rp.4.000.000",style: TextStyle(fontSize: 45,
                        fontWeight: FontWeight.bold),
                      ),
                     SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: appHijau,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: appPutih,
                              borderRadius: BorderRadius.circular(10),
                           ),
                           child: Image.asset("assets/images/uangmasuk.png"),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Pemasukan",style: TextStyle(color: appPutih,fontSize: 15),),
                                  SizedBox(height: 5,),
                                  FittedBox(child: Text("Rp.5.000.000", style: TextStyle(color: appPutih,fontSize: 14),)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 170,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: appRed,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: appPutih,
                              borderRadius: BorderRadius.circular(10),
                           ),
                           child: Image.asset("assets/images/uangkeluar.png"),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Pengeluaran",style: TextStyle(color: appPutih,fontSize: 15),),
                                  SizedBox(height: 5,),
                                  FittedBox(child: Text("Rp.1.000.000", style: TextStyle(color: appPutih,fontSize: 14),)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Frekuensi Pembelanjaan", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                       ),
                      ),
                        SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 170,
                      color: appPurple,
                    ),
                     SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: appKuning2,
                            borderRadius: BorderRadius.circular(20)),
                          child: Text("Hari ini",
                                    style: TextStyle(
                                       fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                     color: appKuning),
                                    )
                                  ),
                                Text("Minggu",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: appGrey2),),
                            Text("Senin",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: appGrey2),),
                        Text("Selasa",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: appGrey2),),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Transaksi Terbaru",
                                    style: TextStyle(
                                        fontSize: 18,
                                    fontWeight: FontWeight.w600,
                              color: appHitam),
                            ),
                        ),
                          Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          decoration: BoxDecoration(
                            color: appViolet,
                            borderRadius: BorderRadius.circular(20)),
                          child: Text("Lihat Semua",
                                    style: TextStyle(
                                       fontSize: 18,
                                     fontWeight: FontWeight.w600,
                                color: appPurple),
                             )
                         ),
                      ],
                    )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}