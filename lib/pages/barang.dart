import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:stockfm/component/warna.dart';
import 'package:stockfm/provider/favorit.dart';

class Barang extends StatelessWidget {
  String id;
  String image;
  String judul;
  String kategori;
  String deskripsi;
  int harga;

  Barang(this.id, this.image, this.deskripsi, this.harga, this.judul, this.kategori,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final favButton = Provider.of<favProvider>(context);
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
                    image,
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
                    onPressed: () {favButton.AddFav(id, judul, deskripsi, harga, image, kategori);},
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
                    judul,
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
                child: Scrollbar(
                    child: SingleChildScrollView(
                  child: Text(
                    deskripsi,
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
                  text: 'Kategori : ',
                  style: GoogleFonts.montserrat(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                        text: kategori,
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
                    "$harga/Item",
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
