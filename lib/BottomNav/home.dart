import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/Tambah&Kurang/pemasukan.dart';
import 'package:pbl/Tambah&Kurang/pengeluaran.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<SalesData> chartData = [
    SalesData(DateTime(2010), 100),
    SalesData(DateTime(2011), 300),
    SalesData(DateTime(2012), 200),
    SalesData(DateTime(2013), 400),
    SalesData(DateTime(2014), 500),
    SalesData(DateTime(2015), 400),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  appPutihKuning,
                  appPutih.withOpacity(0.900),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      CircleAvatar(),
                      Expanded(
                        child: Row(
                          children: [
                            SizedBox(width: 110),
                            Center(
                              child: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: appHitam,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Oktober",
                              style: TextStyle(color: appHitam),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "UangKu",
                  style: TextStyle(fontSize: 14, color: appGrey2),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rp.4.000.000",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pemasukan()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: appHijau,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Container(
                        width: 170,
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: appPutih,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/icon/uangmasuk.png"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pemasukan",
                                    style: TextStyle(
                                        color: appPutih, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Pengeluaran()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: appRed,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Container(
                        width: 170,
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: appPutih,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset("assets/icon/uangkeluar.png"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pengeluaran",
                                    style: TextStyle(
                                        color: appPutih, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Frekuensi Pembelanjaan",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          height: 180,
                          width: chartData.length * 90,
                          child: SfCartesianChart(
                              primaryXAxis: DateTimeAxis(),
                              series: <ChartSeries>[
                                SplineSeries<SalesData, DateTime>(
                                  dataSource: chartData,
                                  color: appPurple,
                                  width: 5,
                                  xValueMapper: (SalesData sales, _) =>
                                      sales.year,
                                  yValueMapper: (SalesData sales, _) =>
                                      sales.sales,
                                ),
                                SplineSeries<SalesData, DateTime>(
                                  color: appRed,
                                  width: 1,
                                  dataSource: chartData,
                                  xValueMapper: (SalesData sales, _) =>
                                      sales.year,
                                  yValueMapper: (SalesData sales, _) => 300,
                                )
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  color: appKuning2,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Hari ini",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: appKuning),
                              )),
                          Text(
                            "Minggu",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: appGrey2),
                          ),
                          Text(
                            "Senin",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: appGrey2),
                          ),
                          Text(
                            "Selasa",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: appGrey2),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text(
                              "Transaksi Terbaru",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: appHitam),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return ListTile(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 45),
                            title: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 60,
                                  margin: EdgeInsets.only(right: 7),
                                  decoration: BoxDecoration(
                                      color: appPutihKuning,
                                      borderRadius: BorderRadius.circular(20)),
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
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "- Rp.100.000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: appRed),
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
                                                color: appGrey),
                                          ),
                                          Text(
                                            "10:00 AM",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: appGrey),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      )
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

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
