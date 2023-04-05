import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stockfm/component/warna.dart';

class Carrousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Carrousel();
  }
}

class _Carrousel extends State<Carrousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> myData = [
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset("assets/images/PROMO2.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset("assets/images/Promo1.png"),
    ),
    ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/images/PROMO3.png"))
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.only(top: 100),
          child: CarouselSlider(
            items: myData,
            carouselController: _controller,
            options: CarouselOptions(
                height: 300,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.6,
                initialPage: 2,
                autoPlayAnimationDuration: const Duration(milliseconds: 1200),
                autoPlayInterval: const Duration(seconds: 6),
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: myData.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(100, 171, 103, 34),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3)),
                    ],
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : warnaOren)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
