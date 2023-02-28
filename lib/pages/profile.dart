import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/home.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: warnaNavy,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                const CircleAvatar(
                  foregroundImage: AssetImage('assets/images/Profile.jpg'),
                  radius: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 76, right: 76),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/usericon.png',
                        width: 20,
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Text(
                        "Reyhan Eldwin Maulana",
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: warnaOren),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 76, right: 76),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/callicon.png',
                        width: 22,
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Text(
                        "+6282111633069",
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: warnaOren),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 76),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/mailicon.png',
                        width: 22,
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Text(
                        "reyhaneldwin31@gmail.com",
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: warnaOren),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 76, right: 76),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/locationicon.png',
                        width: 22,
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Text(
                        "Lamongan",
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: warnaOren),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logouticon.png",
                      width: 22,
                    ),
                    SizedBox(
                      width: .5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Log Out",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            letterSpacing: .5,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffAA0000)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
