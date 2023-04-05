import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../component/warna.dart';
import 'package:stockfm/pages/navbar.dart';
import 'package:stockfm/pages/sign.dart';

var _obsecureText = true;

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
              'assets/images/login.png',
              width: 250,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              'Welcome Back.\nExplore the store.',
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
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none),
                    hintText: 'E-mail',
                    hintStyle: GoogleFonts.openSans(
                        color: Color.fromARGB(255, 45, 44, 44),
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 35, right: 35),
            child: SizedBox(
              width: 350,
              child: TextFormField(
                obscureText: _obsecureText,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.openSans(
                      color: Color.fromARGB(255, 45, 44, 44),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  suffixIcon: IconButton(
                    // style: IconButton.styleFrom(),
                    icon: Icon(
                      _obsecureText ? Icons.visibility_off : Icons.visibility,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    splashColor: Color.fromARGB(0, 0, 0, 0),
                    onPressed: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
            alignment: Alignment(0.7, 0.5),
            child: Text('Forgot My Password',
                style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 90, 89, 89), fontSize: 14)),
          ),
          const SizedBox(
            height: 120,
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => navbar()));
                  },
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 103, right: 103),
            child: Row(
              children: [
                Text(
                  "Don't have account?",
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signUp())),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
