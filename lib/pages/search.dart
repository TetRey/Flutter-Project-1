import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/component/warna.dart';

class searchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaNavy,
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
                    fontWeight: FontWeight.w700,
                    color: warnaOren),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 8),
                child: searchBar(),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(24),
                    elevation: 6,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: const AssetImage(
                            "assets/images/OutdoorCategory.png"),
                        width: 180,
                        height: 220,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(24),
                    elevation: 6,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: const AssetImage(
                            "assets/images/IndoorCategory.png"),
                        width: 180,
                        height: 220,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(24),
                    elevation: 6,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: const AssetImage(
                            "assets/images/MaterialCategory.png"),
                        width: 180,
                        height: 220,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(24),
                    elevation: 6,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image:
                            const AssetImage("assets/images/OtherCategory.png"),
                        width: 180,
                        height: 220,
                      ),
                    ),
                  ),
                ],
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
          hintStyle: GoogleFonts.montserrat(color: Colors.white, fontSize: 12),
          prefixIcon: Icon(
            Icons.search,
            size: 24,
            color: warnaOren,
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(
                  color: Colors.white, width: 2.0, style: BorderStyle.solid)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              borderSide: BorderSide(
                  color: Colors.white, width: 1.4, style: BorderStyle.solid)),
        )));
  }
}
