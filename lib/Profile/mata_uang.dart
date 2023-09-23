import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class MataUang extends StatefulWidget {
  const MataUang({super.key});

  @override
  State<MataUang> createState() => _MataUangState();
}

class _MataUangState extends State<MataUang> {
  List<Map> categories = [
    {"name": "United States (USD)", "isChacked": false},
    {"name": "Indonesia (IDR)", "isChacked": false},
    {"name": "Japan (JPY)", "isChacked": false},
    {"name": "Russia (RUB)", "isChacked": false},
    {"name": "Germany (EUR)", "isChacked": false},
    {"name": "Korea (WON)", "isChacked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                  'Mata Uang',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
                children: categories.map((favorite) {
              return CheckboxListTile(
                activeColor: appHijau2,
                checkboxShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text(favorite['name']),
                value: favorite['isChacked'],
                onChanged: (val) {
                  setState(() {
                    favorite['isChacked'] = val;
                  });
                },
              );
            }).toList())
          ]))
        ],
      ),
    );
  }
}
