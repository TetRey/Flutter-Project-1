import 'package:flutter/material.dart';
import '../component/warna.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/barang.dart';

class Product extends StatelessWidget {
  final String judulProduct;
  final String deskripsiProduct;
  final int hargaProduct;
  final String imageProduct;

  const Product(
      {super.key,
      required this.judulProduct,
      required this.deskripsiProduct,
      required this.hargaProduct,
      required this.imageProduct});

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
            Image.network(
              imageProduct,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 260,
                    height: 20,
                    child: Text(
                      judulProduct,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(215, 255, 255, 255),
                          fontSize: 18,
                          letterSpacing: .6),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Flexible(
                      child: Container(
                    width: 260,
                    height: 40,
                    child: Text(
                      deskripsiProduct,
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
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
                            hargaProduct.toString(),
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
