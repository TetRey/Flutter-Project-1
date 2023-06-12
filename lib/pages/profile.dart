import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:stockfm/pages/editProfile.dart';
import 'package:stockfm/pages/wrapper.dart';
import 'package:stockfm/provider/auth_service.dart';
import '../component/warna.dart';
import 'package:stockfm/pages/login.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final UserData = FirebaseAuth.instance.currentUser;
    return Scaffold(
        backgroundColor: warnaNavy,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: warnaOren),
                ),
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  foregroundImage: NetworkImage(UserData!.photoURL ??
                      "gs://stockfm-fd4d2.appspot.com/images/1686494533979"),
                  radius: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 76, right: 76),
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
                        UserData!.displayName.toString(),
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
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
                        UserData!.email.toString(),
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: warnaOren),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 140,
                    height: 40,
                    child: TextButton(
                      child: Text(
                        "Change Profile",
                        style: GoogleFonts.openSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffD6802B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => editProfile())));
                      },
                    )),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: warnaNavy,
                            title: Text("Logout",
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffAA0000))),
                            content: Text("Apakah anda yakin ingin logout?",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white)),
                            actions: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: warnaOren, elevation: 0),
                                  onPressed: () async {
                                    await authService.signOut();
                                    // Navigator.popUntil(
                                    //     context, ModalRoute.withName('/'));

                                    Navigator.of(context)
                                        .popUntil((route) => route.isFirst);
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                loginPage()));
                                  },
                                  child: Text(
                                    "Iya",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white),
                                  )),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: warnaNavy,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Tidak",
                                      style: TextStyle(color: Colors.white)))
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/logouticon.png",
                            width: 22,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Log out",
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffAA0000)),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}
