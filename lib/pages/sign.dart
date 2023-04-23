import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/sucsess.dart';

class signUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 11, 24, 52),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 75, right: 75),
            child: Image.asset(
              'assets/images/sign_up.png',
              width: 250,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90, right: 90),
            child: Text(
              'Create an Account',
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 1.3,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 35, right: 35),
            child: SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none),
                    hintText: 'First Name',
                    hintStyle: GoogleFonts.openSans(
                        color: Color.fromARGB(255, 77, 78, 80),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
            child: SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none),
                    hintText: 'Last Name',
                    hintStyle: GoogleFonts.openSans(
                        color: Color.fromARGB(255, 77, 78, 80),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
            child: SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none),
                    hintText: 'E-mail',
                    hintStyle: GoogleFonts.openSans(
                        color: Color.fromARGB(255, 77, 78, 80),
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
            child: SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.openSans(
                        color: Color.fromARGB(255, 77, 78, 80),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    suffixIcon:
                        InkWell(onTap: () {}, child: Icon(Icons.visibility))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 35, right: 35),
            child: SizedBox(
              height: 50,
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none),
                    hintText: 'Re-Password',
                    hintStyle: GoogleFonts.openSans(
                        color: Color.fromARGB(255, 77, 78, 80),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    suffixIcon:
                        InkWell(onTap: () {}, child: Icon(Icons.visibility))),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 340,
              height: 55,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xffD6802B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => sucsess()));
                  },
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
