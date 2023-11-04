import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:pbl/Color/color.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  final DateTime year;
  final double sales;

  SalesData(this.year, this.sales);
}
class ReportPengeluaran extends StatefulWidget {
  const ReportPengeluaran({Key? key}) : super(key: key);

  @override
  _ReportPengeluaranState createState() => _ReportPengeluaranState();
}

class _ReportPengeluaranState extends State<ReportPengeluaran> {
  var selectedType;
  List<String> Option1 = <String>[
    "Hari",
    "Bulan",
    "Tahun",
  ];

  final List<SalesData> chartData = [
    SalesData(DateTime(2010), 100),
    SalesData(DateTime(2011), 300),
    SalesData(DateTime(2012), 200),
    SalesData(DateTime(2013), 400),
    SalesData(DateTime(2014), 500),
    SalesData(DateTime(2015), 400),
  ];

  bool isSwitched = false;
  bool isPieChart = false;

  var selectedType2;
  List<String> Option2 = <String>[
    "Transaksi",
    "Coba",
    "Di coba",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Laporan Keuangan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: appGrey2, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(10),
                          items: Option1.map((value) {
                            return DropdownMenuItem(
                              child: Row(
                                children: [
                                  Text(
                                    value,
                                    style: TextStyle(color: appHitam),
                                  ),
                                ],
                              ),
                              value: value,
                            );
                          }).toList(),
                          onChanged: (selectedtipeData) {
                            setState(() {
                              selectedType = selectedtipeData;
                            });
                          },
                          value: selectedType,
                          isExpanded: false,
                          hint: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'pilih',
                              style: TextStyle(color: appGrey2),
                            ),
                          ),
                          underline: Container(),
                        ),
                      ),
                      FlutterSwitch(
                        value: isSwitched,
                        onToggle: (value) {
                          setState(() {
                            isSwitched = value;
                            isPieChart = value;
                          });
                        },
                        inactiveColor: appPutih,
                        activeColor: appPutih,
                        toggleColor: appPutih,
                        inactiveToggleColor: appPutih,
                        width: 110,
                        height: 51,
                        switchBorder: Border.all(color: appGrey2),
                        toggleSize: 60,
                        borderRadius: 8,
                        padding: 1.0,
                        activeIcon: Icon(
                          Icons.pie_chart,
                          color: appHijau,
                        ),
                        inactiveIcon: Icon(
                          Icons.show_chart,
                          color: appHijau,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            "Rp.1.000.000",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 250,
                            width: chartData.length * 70,
                            child: isPieChart
                                ? SfCircularChart(
                                    series: <CircularSeries>[
                                      PieSeries<SalesData, DateTime>(
                                        dataSource: chartData,
                                        xValueMapper: (SalesData data, _) =>
                                            data.year,
                                        yValueMapper: (SalesData data, _) =>
                                            data.sales,
                                      ),
                                    ],
                                  )
                                : SfCartesianChart(
                                    primaryXAxis: DateTimeAxis(),
                                    series: <ChartSeries>[
                                      SplineSeries<SalesData, DateTime>(
                                        dataSource: chartData,
                                        color: Colors.red,
                                        width: 5,
                                        xValueMapper: (SalesData sales, _) =>
                                            sales.year,
                                        yValueMapper: (SalesData sales, _) =>
                                            sales.sales,
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: LiteRollingSwitch(
                            value: false,
                            width: 300,
                            textOn: "Pengeluaran",
                            textSize: 20,
                            textOff: "Pemasukan",
                            textOnColor: appPutih,
                            colorOn: appRed,
                            colorOff: appHijau,
                            iconOn: Icons.arrow_upward_rounded,
                            iconOff: Icons.arrow_downward_rounded,
                            animationDuration: Duration(milliseconds: 200),
                            onChanged: (bool state) {
                              print('turned ${(state) ? 'on' : 'off'}');
                            },
                            onDoubleTap: () {},
                            onSwipe: () {},
                            onTap: () {},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                border: Border.all(color: Colors.grey, width: 1),
                              ),
                              child: DropdownButton(
                                borderRadius: BorderRadius.circular(10),
                                items: Option2.map((value) {
                                  return DropdownMenuItem(
                                    child: Row(
                                      children: [
                                        Text(
                                          value,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: (selectedtipeData) {
                                  setState(() {
                                    selectedType2 = selectedtipeData;
                                  });
                                },
                                value: selectedType2,
                                isExpanded: false,
                                hint: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    'pilih',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                underline: Container(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ListView.separated(
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                            );
                          },
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 25),
                              title: Row(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    margin: EdgeInsets.only(right: 6),
                                    decoration: BoxDecoration(
                                      color: Colors.yellow,
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
                                              "- Rp.50.000",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,
                                              ),
                                            ),
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
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              "10:00 AM",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Colors.grey,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

