import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stockfm/pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import '../component/warna.dart';

class likePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.only(left: 20),
            child: ListView(
              children: [Container(width: 100,height: 100,color: warnaNavy,)],
            ),
          ))
        ],
      ),
    );
  }
}
