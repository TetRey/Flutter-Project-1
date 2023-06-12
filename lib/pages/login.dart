import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:stockfm/provider/auth_service.dart';
import 'package:stockfm/validator.dart';
import '../component/warna.dart';
import 'package:stockfm/pages/navbar.dart';
import 'package:stockfm/pages/sign.dart';

var _obsecureText = true;

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                  child: Lottie.asset("assets/lottie/login.json", height: 300)),
              const SizedBox(
                height: 1,
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
                      onPressed: () async {
                        if (_key.currentState!.validate()) {
                          try {
                            await authService.signInWithEmailAndPassword(
                              emailController.text,
                              passwordController.text,
                            );
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
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account?",
                      style:
                          GoogleFonts.poppins(fontSize: 14, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () => Navigator.pushReplacement(context,
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
        ),
      ),
    );
  }
}
