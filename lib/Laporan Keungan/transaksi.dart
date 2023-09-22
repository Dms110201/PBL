import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  TextEditingController controller = new TextEditingController();

  bool displayMontList = true;

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
                  appPutih,
                  appPutih.withOpacity(0.100),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.keyboard_arrow_down_outlined, color: appHijau2),
                    Text("Bulan", style: TextStyle(fontSize: 18)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: appPurplesoft,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lihat laporan keuangan Anda",
                            style: TextStyle(fontSize: 16, color: appHijau2),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30)),
                          Icon(Icons.keyboard_arrow_right_outlined,
                              color: appHijau2),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                      "Hari ini",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 45),
                          title: Row(children: [
                            Container(
                              width: 60,
                              height: 70,
                              margin: EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                  color: appPutihKuning,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset('assets/icon/belanja.png'),
                            ),
                            Expanded(
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Belanja",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold),),
                                    Text("- Rp.50.000",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                          color: appRed),)
                                  ],
                                ),
                                SizedBox(height: 12,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Belil bahan makanan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                            fontSize: 13,color: appGrey2),),
                                    Text("10:00 AM",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                          fontSize: 13,color: appGrey2),)
                                  ],
                                )
                              ],
                             ),)
                          ])
                      );
                    }
                  ),
                  SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                      "Kemarin",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 45),
                          title: Row(children: [
                            Container(
                              width: 60,
                              height: 70,
                              margin: EdgeInsets.only(right: 7),
                              decoration: BoxDecoration(
                                  color: appPutihKuning,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset('assets/icon/belanja.png'),
                            ),
                            Expanded(
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Gajian",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold),),
                                    Text("+ 4.000.000",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                          color: appHijau2),)
                                  ],
                                ),
                                SizedBox(height: 12,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Belil bahan makanan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                            fontSize: 13,color: appGrey2),),
                                    Text("04:30 pm",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                          fontSize: 13,color: appGrey2),)
                                  ],
                                )
                              ],
                             ),)
                          ])
                      );
                    }
                  ),
                  
              ],
            ),
          ),
        ],
      ),
       bottomNavigationBar: ConvexAppBar(
            backgroundColor: appPutih,
            color: appGrey2,
            activeColor: appHijau,
              items: [
                TabItem(icon: Icons.home, title: 'Utama',),
                  TabItem(icon: Icons.map, title: 'Transaction'),
              TabItem(icon: Icons.add, title: 'Add'),
              TabItem(icon: Icons.message, title: 'Anggaran'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int i) => print('click index=$i'),
      )
    );
  }
}



