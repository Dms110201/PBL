import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:dropdown_search/dropdown_search.dart';

class ExportData extends StatefulWidget {
  const ExportData({super.key});

  @override
  State<ExportData> createState() => _ExportDataState();
}

class _ExportDataState extends State<ExportData> {
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
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                    Text(
                      'Export Data',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Column(
                      children: [
                        Text(
                          'Data apa yang ingin Anda ekspor?',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    items: ["Satu Bulan ", 'Satu Tahun', "Semuanya"],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Pilih",
                      ),
                    ),
                    onChanged: print,
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Column(
                      children: [
                        Text(
                          'Rentang tanggal?',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    items: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Pilih",
                      ),
                    ),
                    onChanged: print,
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    Column(
                      children: [
                        Text(
                          'Format apa yang ingin Anda ekspor?',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    items: ["xlsx", "xls", "pdf"],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: "Pilih",
                      ),
                    ),
                    onChanged: print,
                  ),
                ),
                SizedBox(height: mediaQuery.size.height * 0.1),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appHijau,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      minimumSize: const Size(350, 50),
                    ),
                    child: Text(
                      'Export',
                      style: TextStyle(fontSize: 20, color: appPutih),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
