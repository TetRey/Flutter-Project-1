import 'package:flutter/material.dart';
import 'package:stockfm/models/model.dart';
import 'package:stockfm/widget/Product.dart';

class all_product with ChangeNotifier {
  List<productModel> _allProduct = [
    productModel(
        "1",
        "Bata Putih",
        "Ini adalah deskripsi barang yang akan digunakan pada setiap produk",
        3000,
        "assets/images/Barang/Bata_putih.png",
        "Material"),
    productModel(
        "2",
        "Batu Kasar",
        "Ini adalah deskripsi barang yang akan digunakan pada setiap produk",
        2000,
        "assets/images/Barang/Batu_kasar.png",
        "Material"),
    productModel(
        "3",
        "Batu Jalan",
        "Ini adalah deskripsi barang yang akan digunakan pada setiap produk",
        1800,
        "assets/images/Barang/Batu_jalan.png",
        "Material"),
    productModel(
        "4",
        "Pasir",
        "Ini adalah deskripsi barang yang akan digunakan pada setiap produk",
        2100,
        "assets/images/Barang/Sand.png",
        "Material"),
    productModel(
        "5",
        "Tanah",
        "Ini adalah deskripsi barang yang akan digunakan pada setiap produk",
        1900,
        "assets/images/Barang/Tanah.png",
        "Material")
  ];

  List<productModel> get allproduct {
    return [..._allProduct];
  }
}
