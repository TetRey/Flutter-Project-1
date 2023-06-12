import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:stockfm/pages/navbar.dart';
import 'package:stockfm/pages/sucsess.dart';
import 'package:stockfm/validator.dart';
import 'package:stockfm/component/warna.dart';

import '../provider/auth_service.dart';

var _obsecureText = true;

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController NameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfController = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 11, 24, 52),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Form(
          key: _key,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 75, right: 75),
                child: Image.asset(
                  'assets/images/sign_up.png',
                  width: 200,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
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
                padding: EdgeInsets.only(top: 20, left: 35, right: 35),
                child: SizedBox(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: NameController,
                    validator: validateForm,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none),
                        hintText: 'Display Name',
                        hintStyle: GoogleFonts.openSans(
                            color: Color.fromARGB(255, 77, 78, 80),
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 35, right: 35),
                child: SizedBox(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: emailController,
                    validator: validateEmail,
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
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: passwordController,
                    validator: validatePassword,
                    obscureText: _obsecureText,
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
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obsecureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          splashColor: Color.fromARGB(0, 0, 0, 0),
                          onPressed: () {
                            setState(() {
                              _obsecureText = !_obsecureText;
                            });
                          },
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 35, right: 35),
                child: SizedBox(
                  height: 60,
                  width: 350,
                  child: TextFormField(
                    controller: passwordConfController,
                    validator: validatePasswordConf,
                    obscureText: _obsecureText,
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
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obsecureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          splashColor: Color.fromARGB(0, 0, 0, 0),
                          onPressed: () {
                            setState(() {
                              _obsecureText = !_obsecureText;
                            });
                          },
                        )),
                  ),
                ),
              ),
              SizedBox(
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
                      onPressed: () async {
                        if (_key.currentState!.validate()) {
                          try {
                            await authService
                                .createUserWithEmailAndPassword(
                                    emailController.text,
                                    passwordController.text)
                                .then((value) => authService
                                    .updateUserData(NameController.text));
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (_) => navbar()),
                            );
                          } on FirebaseAuthException catch (error) {
                            errorMessage = error.message!;
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.0))),
                                  backgroundColor:
                                      Color.fromARGB(255, 34, 34, 34),
                                  title: const Text(
                                    "Error",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  content: Text(
                                    errorMessage,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Continue",
                                        style: TextStyle(
                                            color: warnaOren,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
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
        ),
      ),
    );
  }
}
