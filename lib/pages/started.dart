import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/login.dart';
import 'package:lottie/lottie.dart';

class getStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 24, 52),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 90,
          ),
          Lottie.asset("assets/lottie/hello.json", width: 350),
          const SizedBox(
            height: 90,
          ),
          Text(
            'Welcome to Stock FM',
            style: GoogleFonts.poppins(
                fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          const SizedBox(
            height: 17,
          ),
          Text(
            "The most complete material store in Indonesia. Let's get started",
            style: GoogleFonts.poppins(
                fontSize: 18, color: Colors.white, height: 1),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 45,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => loginPage()));
            },
            iconSize: 70,
            icon: Icon(CupertinoIcons.arrow_right_circle_fill),
            color: Colors.white,
          ),
        ]),
      ),
    );
  }
}
