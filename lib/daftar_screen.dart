import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
    return Scaffold(
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
                      height: 500,
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
                              horizontal: 2.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: currentIndex == entry.key
                                    ? Colors.teal
                                    : Colors.grey),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}