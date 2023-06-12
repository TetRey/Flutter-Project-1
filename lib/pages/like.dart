import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:stockfm/pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/provider/favorit.dart';
import '../component/warna.dart';
import 'barang.dart';

class likePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataFav = Provider.of<favProvider>(context);
    return Scaffold(
      backgroundColor: warnaNavy,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 24, bottom: 10),
            child: Text(
              "Wishlist",
              style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0),
                  child: ListView.builder(
                      itemCount: dataFav.Fav.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 20),
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
                                    dataFav.Fav.values.toList()[index].image),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 7),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 220,
                                        height: 20,
                                        child: Text(
                                          dataFav.Fav.values
                                              .toList()[index]
                                              .judul,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromARGB(
                                                  215, 255, 255, 255),
                                              fontSize: 18,
                                              letterSpacing: .6),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Flexible(
                                          child: Container(
                                        width: 170,
                                        height: 40,
                                        child: Text(
                                          dataFav.Fav.values
                                              .toList()[index]
                                              .deskripsi,
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24))),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Barang(
                                                              dataFav.Fav.values
                                                                  .toList()[
                                                                      index]
                                                                  .id,
                                                              dataFav.Fav.values
                                                                  .toList()[
                                                                      index]
                                                                  .image,
                                                              dataFav.Fav.values
                                                                  .toList()[
                                                                      index]
                                                                  .deskripsi,
                                                              dataFav.Fav.values
                                                                  .toList()[
                                                                      index]
                                                                  .harga,
                                                              dataFav.Fav.values
                                                                  .toList()[
                                                                      index]
                                                                  .judul,
                                                              dataFav.Fav.values
                                                                  .toList()[
                                                                      index]
                                                                  .kategori)));
                                            },
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      2, 2, 2, 2),
                                              child: Text(
                                                "Learn More",
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
                      })))
        ],
      ),
    );
  }
}
