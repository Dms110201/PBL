import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  bool isExpense = true;
  bool isExpense2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(color: appPutih),
        ),
        SafeArea(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 30)),
              Text(
                'Notifikasi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Peringatan Biaya',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Dapatkan pemberitahuan\ntentang Anda\npengeluaran',
                    style: TextStyle(fontSize: 14, color: appGrey3),
                  ),
                ],
              ),
              SizedBox(width: 150,),
              Switch(
                    value: isExpense,
                    onChanged: (bool value) {
                      setState(() {
                        isExpense = value;
                      });
                    },
                    activeColor: appHijau2,
                    inactiveThumbColor:appPutih,
                  )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Anggaran',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Dapatkan pemberitahuan saat\nAnda anggaran melebihi batas',
                    style: TextStyle(fontSize: 14, color: appGrey3),
                  ),
                ],
              ),
              SizedBox(width: 117,),
              Switch(
                    value: isExpense2,
                    onChanged: (bool value) {
                      setState(() {
                        isExpense2 = value;
                      });
                    },
                    activeColor: appHijau2,
                    inactiveThumbColor:appPutih,
                  )
            ],
          )
        ]))
      ]),
    );
  }
}
