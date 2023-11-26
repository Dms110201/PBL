import 'package:flutter/material.dart';
import 'package:pbl/BottomNav/bottomnav.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/Profile/settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: appGrey),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 130,
                        height: 150,
                        child: Image.asset(
                          'assets/icon/Rectangle 9.png',
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Username",
                              style: TextStyle(fontSize: 14, color: appGrey2),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Fahrul Rozi",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.edit_outlined,
                            size: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNav(),
                      ),
                    );
                  },
                  child: Container(
                    width: 350,
                    height: 130,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: appPutih,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 70,
                          decoration: BoxDecoration(
                            color: appPurplesoft,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.account_balance_wallet,
                                color: appHijau,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Menu Utama",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Settings(),
                      ),
                    );
                  },
                  child: Container(
                    width: 350,
                    height: 130,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: appPutih,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 70,
                          decoration: BoxDecoration(
                            color: appPurplesoft,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.settings,
                                color: appHijau,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Setting",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNav(),
                      ),
                    );
                  },
                  child: Container(
                    width: 350,
                    height: 130,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: appPutih,
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 70,
                          decoration: BoxDecoration(
                            color: appPurplesoft,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.exit_to_app_rounded,
                                color: appRed,
                                size: 50,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Keluar",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


