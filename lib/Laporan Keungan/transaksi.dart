import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class Transaksi extends StatefulWidget {
  const Transaksi({super.key});

  @override
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  final List<String> navBarItems = ["Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "Desember"];
  String selectedNavBarItem = "Januari";

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appPutih,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical:60 )),
              SafeArea(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: appPutih,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: DropdownButton<String>(
                    value: selectedNavBarItem,
                    onChanged: (newValue) {
                      setState(() {
                        selectedNavBarItem = newValue!;
                      });
                    },
                    items: navBarItems.map((item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
