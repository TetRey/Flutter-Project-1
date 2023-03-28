import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/home.dart';

class aboutUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaNavy,
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 16, right: 16),
        child: Column(
          children: [
            Text(
              "ABOUT US",
              style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 100,
            ),
            profile1(),
            const SizedBox(
              height: 41,
            ),
            profile2(),
            const SizedBox(
              height: 190,
            ),
            Text(
              "v 1.0",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class profile2 extends StatelessWidget {
  const profile2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 380,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xff2B4271).withOpacity(0.5),
              spreadRadius: 8,
              blurRadius: 10,
              offset: const Offset(0, 0))
        ],
        borderRadius: BorderRadius.circular(40),
        color: warnaNavy,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                "assets/images/fotoferry.jpg",
                height: 140,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    "Ferry Triwantono",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                Text(
                  "Mahasiswa Sistem Informasi",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  "082111633094",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class profile1 extends StatelessWidget {
  const profile1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 380,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xff2B4271).withOpacity(0.5),
              spreadRadius: 8,
              blurRadius: 10,
              offset: const Offset(0, 0))
        ],
        borderRadius: BorderRadius.circular(40),
        color: warnaNavy,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                "assets/images/Profile.jpg",
                height: 140,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    "Reyhan Eldwin Maulana",
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                Text(
                  "Mahasiswa Sistem Informasi",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  "082111633069",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
