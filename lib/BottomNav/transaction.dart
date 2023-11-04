import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/Laporan%20Keungan/linechart.dart';

class transaction extends StatefulWidget {
  const transaction({super.key});

  @override
  State<transaction> createState() => _transactionState();
}

class _transactionState extends State<transaction> {
  var selectedType;
  List<String> Option1 = <String>[
    "Hari",
    "Bulan",
    "Tahun",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: BoxDecoration(
          color: appPutih,
        ),
      ),
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(7)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: appGrey3, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(10),
                      items: Option1.map((value) => DropdownMenuItem(
                            child: Row(
                              children: [
                                Text(
                                  value,
                                  style: TextStyle(color: appHitam),
                                ),
                              ],
                            ),
                            value: value,
                          )).toList(),
                      onChanged: (selectedtipeData) {
                        setState(() {
                          selectedType = selectedtipeData;
                        });
                      },
                      value: selectedType,
                      isExpanded: false,
                      hint: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'pilih',
                          style: TextStyle(color: appGrey3),
                        ),
                      ),
                      underline: Container(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LineChart()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appGrey,
                      elevation: 0,
                      minimumSize: const Size(
                        600,
                        50,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              const Text(
                                'Lihat laporan keuangan Anda',
                                style: TextStyle(
                                  color: appHijau,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: appHijau,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Hari ini",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 60,
                          margin: EdgeInsets.only(right: 7),
                          decoration: BoxDecoration(
                            color: appPutihKuning,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('assets/icon/belanja.png'),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Belanja",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "- Rp.100.000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: appRed,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Belil bahan makanan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: appGrey2,
                                    ),
                                  ),
                                  Text(
                                    "10:00 AM",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: appGrey2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Kemarin",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 30),
                    title: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 60,
                          margin: EdgeInsets.only(right: 7),
                          decoration: BoxDecoration(
                            color: appPutihKuning,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset('assets/icon/belanja.png'),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Belanja",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "- Rp.100.000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: appRed,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Belil bahan makanan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: appGrey2,
                                    ),
                                  ),
                                  Text(
                                    "10:00 AM",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color: appGrey2,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
