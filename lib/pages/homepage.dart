import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockfm/pages/barang.dart';
import 'package:stockfm/component/warna.dart';
import '../models/model.dart';
import '../widget/Carousel.dart';
import '../widget/Product.dart';

class homePage extends StatelessWidget {
  homePage({super.key});
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<produtModel> dummyData = List.generate(10, (index) {
      return produtModel(faker.food.restaurant(), faker.lorem.sentence(),
          Random().nextInt(100000), "https://picsum.photos/id/$index/100/100");
    });

    return Scaffold(
        backgroundColor: warnaNavy,
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Text.rich(TextSpan(
                text: 'Bonjour, \n',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    letterSpacing: 1.6),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Reyhan.',
                      style: GoogleFonts.montserrat(
                          color: warnaOren,
                          fontWeight: FontWeight.w700,
                          fontSize: 30))
                ])),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(height: 350, child: Carrousel()),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              "Product",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return Product(
                    judulProduct: dummyData[index].judul,
                    deskripsiProduct: dummyData[index].deskripsi,
                    hargaProduct: dummyData[index].harga,
                    imageProduct: dummyData[index].image);
              },
              itemCount: dummyData.length,
            ),
          ),
        ]));
  }
}
