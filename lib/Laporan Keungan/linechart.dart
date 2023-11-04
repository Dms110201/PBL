import 'package:flutter/material.dart';
import 'package:pbl/Color/color.dart';

class LineChart extends StatefulWidget {
  const LineChart({super.key});

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 30)),
                Text(
              "Laporan Keuangan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        ),
      ]),
    );
  }
}
