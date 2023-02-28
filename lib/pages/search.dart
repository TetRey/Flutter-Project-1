import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/home.dart';

class searchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Explore",
                style: GoogleFonts.montserrat(
                    letterSpacing: 1.5,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: searchBar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      color: Colors.transparent,
      child: TextField(
          decoration: InputDecoration(
              hintText: "Search",
              hintStyle: GoogleFonts.montserrat(color: warnaOren, fontSize: 12),
              prefixIcon: Icon(
                Icons.search,
                size: 24,
                color: warnaNavy,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: warnaOren)))),
    );
  }
}
