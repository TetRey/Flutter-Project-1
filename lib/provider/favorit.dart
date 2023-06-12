import 'package:flutter/material.dart';
import 'package:stockfm/models/model.dart';
import 'package:stockfm/provider/provider.dart';

class favProvider with ChangeNotifier{
  Map<String, productModel> _Fav = {};
  Map<String, productModel> get Fav => _Fav;

  bool AddFav(String id, String judul, String deskripsi, int harga, String image, String kategori) {
    if (_Fav.containsKey(id)) {
      _Fav.remove(id);
      return false;
    } else {
      _Fav.putIfAbsent(
          id, () => productModel(DateTime.now().toString(), judul, deskripsi, harga, image, kategori));
      return true;
    }
  }

  // void RemoveFav(String id) {
  //   _Fav.remove(id);
  // }

  void notifyListeners() {}
}