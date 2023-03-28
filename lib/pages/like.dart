import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stockfm/pages/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/home.dart';

Color warnaNavy = Color.fromARGB(255, 11, 24, 52);
Color warnaOren = Color(0xffD6802B);

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
              children: [Product(), Product(), Product(), Product(), Product()],
            ),
          ))
        ],
      ),
    );
  }
}
