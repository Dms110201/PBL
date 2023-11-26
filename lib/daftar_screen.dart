import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pbl/Color/color.dart';
import 'package:pbl/AkunBaru/daftar_awal.dart';
import 'package:pbl/Login/masuk_screen.dart';

class DaftarScreen extends StatefulWidget {
  const DaftarScreen({super.key});

  @override
  State<DaftarScreen> createState() => _DaftarScreenState();
}

class _DaftarScreenState extends State<DaftarScreen> {
  List imagesList = [
    {"id": 1, "image_path": 'assets/images/satu.png'},
    {"id": 2, "image_path": 'assets/images/dua.png'},
    {"id": 3, "image_path": 'assets/images/tiga.png'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appPutih,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      (currentIndex);
                    },
                    child: SizedBox(
                      height: mediaQuery.size.height * 0.7,
                      child: CarouselSlider(
                        items: imagesList
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 0.9,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.1,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 10 : 10,
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: currentIndex == entry.key
                                    ? appHijau
                                    : appGrey2),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.10,
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Daftar()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: appHijau,
                      minimumSize: const Size(400, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Daftar',
                    style: TextStyle(color: appPutih),
                  ),
                ),
              ),
               SizedBox(height: mediaQuery.size.height * 0.01,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: appGrey,
                      minimumSize: const Size(400, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Masuk',
                    style:
                        TextStyle(color: appHijau, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
