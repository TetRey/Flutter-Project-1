import 'package:flutter/material.dart';

class produtModel{
  @required String judul;
  @required String deskripsi;
  @required String image;
  @required int harga;

  produtModel(this.judul, this.deskripsi, this.harga, this.image);
}