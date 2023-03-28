import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/component/warna.dart';

class Barang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: warnaOren,
        title: Text(
          "STOCK FM",
          style: GoogleFonts.montserrat(
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600,
              color: warnaNavy),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 400,
              width: 380,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff2B4271).withOpacity(0.5),
                      spreadRadius: 8,
                      blurRadius: 10,
                      offset: const Offset(5, 7))
                ],
                borderRadius: BorderRadius.circular(40),
                color: warnaNavy,
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/images/Bata_putih.png",
                    width: 50,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                IconButton(
                    iconSize: 32,
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border)),
                Text(
                  "Like",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Bata Putih",
                    style: GoogleFonts.montserrat(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.star_fill,
                        color: warnaOren,
                        size: 24,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          "4/5",
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 15),
              child: Container(
                height: 100,
                child: const Scrollbar(
                    child: SingleChildScrollView(
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    textAlign: TextAlign.justify,
                  ),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text.rich(TextSpan(
                  text: 'Kategori :',
                  style: GoogleFonts.montserrat(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                        text: 'Material',
                        style: GoogleFonts.montserrat(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ))
                  ])),
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 5.000,00/Item",
                    style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(248, 72, 68, 68)),
                  ),
                  Container(
                    width: 90,
                    height: 40,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffD6802B),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {},
                        child: Text(
                          'Contact',
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
