import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/Profile/bahasa.dart';
import 'package:pbl/Profile/mata_uang.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: appPutih),
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                    Text(
                      'Settings',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 100,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MataUang(), 
                      ),
                    );
                  },
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Mata Uang",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      ),SizedBox(width: 250,),
                      Text('IDR',style: TextStyle(color: appGrey3, fontSize: 14),),
                      Icon(Icons.arrow_forward_ios_rounded,color: appHijau2, size: 25,)
                    ],
                  ),
                ),
                SizedBox(height: 34,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bahasa(),
                      ),
                    );
                  },
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Bahasa",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      ),SizedBox(width: 240,),
                      Text('Indonesia',style: TextStyle(color: appGrey3, fontSize: 14),),
                      Icon(Icons.arrow_forward_ios_rounded,color: appHijau2, size: 25,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

