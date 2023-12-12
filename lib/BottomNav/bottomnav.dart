import 'package:flutter/material.dart';
import 'package:pbl/BottomNav/exportdata.dart';
import 'package:pbl/BottomNav/home.dart';
import 'package:pbl/BottomNav/profile.dart';
import 'package:pbl/BottomNav/transaction.dart';
import 'package:pbl/Color/color.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    Profile(),
    ExportData(),
    transaction(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 15,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:<Widget> [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton( minWidth: 100, onPressed: () {
                    setState(() {
                      currentScreen = Home();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: currentTab == 0 ? appHijau : appGrey3,size: 40,),
                      Text("Home",style: TextStyle(color: currentTab == 0 ? appHijau : appGrey3,),)
                    ],
                  ),
                  ),
                  MaterialButton( minWidth: 100, onPressed: () {
                    setState(() {
                      currentScreen = transaction();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.compare_arrows_rounded,color: currentTab == 1 ? appHijau : appGrey3,size: 40,),
                      Text("Transaksi",style: TextStyle(color: currentTab == 1 ? appHijau : appGrey3,),)
                    ],
                  ),
                  )
                ],
              ),
               Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton( minWidth: 100, onPressed: () {
                    setState(() {
                      currentScreen = ExportData();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email_rounded,color: currentTab == 2 ? appHijau : appGrey3,size: 40,),
                      Text("Export",style: TextStyle(color: currentTab == 2 ? appHijau : appGrey3,),)
                    ],
                  ),
                  ),
                  MaterialButton( minWidth: 50, onPressed: () {
                    setState(() {
                      currentScreen = Profile();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_sharp,color: currentTab == 3 ? appHijau : appGrey3,size: 40,),
                      Text("Profil",style: TextStyle(color: currentTab == 3 ? appHijau : appGrey3,),)
                    ],
                  ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
