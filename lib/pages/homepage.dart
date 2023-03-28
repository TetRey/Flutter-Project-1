import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/barang.dart';
import 'package:stockfm/component/warna.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homePage();
  }
}

class _homePage extends State<homePage> {
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
    return Scaffold(
      backgroundColor: warnaNavy,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Flexible(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text.rich(TextSpan(
                  text: 'Bonjour, \n',
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      letterSpacing: 1.6),
                  children: <InlineSpan>[
                    TextSpan(
                        text: 'Reyhan.',
                        style: GoogleFonts.montserrat(
                            color: warnaOren,
                            fontWeight: FontWeight.w700,
                            fontSize: 30))
                  ])),
            ),
            const SizedBox(
              height: 16,
            ),
            CarouselSlider(
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
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
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
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                "Product",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Product(),
            Product(),
            Product()
          ],
        ))
      ]),
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: warnaOren70,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(100, 171, 103, 34),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Bata_putih.png',
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bata Putih",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(215, 255, 255, 255),
                        fontSize: 18,
                        letterSpacing: .6),
                  ),
                  Flexible(
                      child: Text(
                    "Lorem Ipsum is simply \ndummy text of the printing \nand typesetting industry.",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  )),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 100,
                    height: 35,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: warnaNavy,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Barang()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                          child: Text(
                            'Learn More',
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
