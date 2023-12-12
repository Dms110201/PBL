import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class Bahasa extends StatefulWidget {
  const Bahasa({super.key});

  @override
  State<Bahasa> createState() => _BahasaState();
}

class _BahasaState extends State<Bahasa> {
 List<Map> categories = [
    {"name": "English (EN)", "isChacked": false},
    {"name": "Indonesian (ID)", "isChacked": true},
    {"name": "Arabic (AR)", "isChacked": false},
    {"name": "Chinese (ZH)", "isChacked": false},
    {"name": "Dutch (NL)", "isChacked": false},
    {"name": "German (DE)", "isChacked": false},
    {"name": "Italian (IT)", "isChacked": false},
    {"name": "Korean (KO)", "isChacked": false},
    {"name": "Portuguese (PT)", "isChacked": false},
    {"name": "Russian (RU)", "isChacked": false},
    {"name": "Spanish (ES)", "isChacked": false},
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
                  'Bahasa',
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
