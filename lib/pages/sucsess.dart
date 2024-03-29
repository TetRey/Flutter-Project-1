import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../component/warna.dart';
import 'package:stockfm/pages/navbar.dart';

class sucsess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 24, 52),
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie/success.json", height: 250),
            const SizedBox(
              height: 80,
            ),
            Text(
              "Congrats! \nYou made new an account.",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 1.2),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              child: Text(
                "Let's explore what makes the house more sturdy with Stock FM",
                style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.1),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: 130,
              height: 35,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => navbar()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xffD6802B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Continue',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
