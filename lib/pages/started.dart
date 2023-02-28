import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/login.dart';

class getStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 24, 52),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset(
            'assets/images/get_start.png',
            width: 350,
          ),
          const SizedBox(
            height: 180,
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
              Navigator.push(context,
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
