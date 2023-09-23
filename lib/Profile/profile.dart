import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

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
              decoration:
                  BoxDecoration(color: Color.fromRGBO(245, 243, 243, 0.986)),
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
                  Column(
                    children: [
                      Container(
                        width: 350,
                        height: 120,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: appPutih,
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: appPurplesoft,
                                  borderRadius: BorderRadius.circular(20)),
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
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                                Text(
                                  "Menu Utama",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                   Column(
                    children: [
                      Container(
                        width: 350,
                        height: 120,
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
                                  borderRadius: BorderRadius.circular(10)),
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
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                                Text(
                                  "Settings",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                   Column(
                    children: [
                      Container(
                        width: 350,
                        height: 120,
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
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_upward_rounded,
                                    color: appHijau,
                                    size: 50,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                                Text(
                                  "Export Data",
                                  style: TextStyle(fontSize: 19),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                   Column(
                    children: [
                      Container(
                        width: 350,
                        height: 120,
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
                                  borderRadius: BorderRadius.circular(10)),
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
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                                Text(
                                  "Keluar",
                                  style: TextStyle(fontSize: 19),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: appPutih,
          color: appGrey2,
          activeColor: appHijau,
          items: [
            TabItem(
              icon: Icons.home,
              title: 'Utama',
            ),
            TabItem(icon: Icons.map, title: 'Transaction'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Anggaran'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: (int i) => print('click index=$i'),
        ));
  }
}
