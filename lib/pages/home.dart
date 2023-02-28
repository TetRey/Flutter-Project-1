import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/profile.dart';

Color warnaNavy = Color.fromARGB(255, 11, 24, 52);
Color warnaOren = Color(0xffD6802B);

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 252, 255),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Popular Recently",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: warnaNavy),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    child: Flexible(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Popular(),
                          Popular(),
                          Popular(),
                          Popular(),
                          Popular(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Our Products",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: warnaNavy),
                    ),
                  ),
                  Product(),
                  Product(),
                  Product(),
                  Product(),
                  Product(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 10, bottom: 16),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 1))
          ],
          borderRadius: BorderRadius.circular(18),
          color: warnaOren,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                'assets/images/Bata_putih.png',
                width: 125,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Batu Halus",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 180,
                    height: 36,
                    child: Text(
                      "Digunakan untuk membangun bangunan seperti rumah",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          height: 1,
                          fontSize: 13.5),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 35,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: warnaNavy,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 30, left: 10),
      child: Container(
        width: 250,
        height: 80,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 10))
          ],
          borderRadius: BorderRadius.circular(18),
          color: warnaOren,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.asset(
                'assets/images/Batu_semi.png',
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Batu Halus",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 130,
                    height: 36,
                    child: Text(
                      "Digunakan untuk jalanan halaman rumah",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          height: 1,
                          fontSize: 13.5),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 35,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: warnaNavy,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}
