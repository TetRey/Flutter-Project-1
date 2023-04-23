import 'package:flutter/material.dart';

class productModel with ChangeNotifier {
  @required
  String id;
  @required
  String judul;
  @required
  String deskripsi;
  @required
  String image;
  @required
  int harga;
  @required
  String kategori;

  productModel(this.id, this.judul, this.deskripsi, this.harga, this.image,
      this.kategori);
}
