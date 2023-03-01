import 'package:flutter/material.dart';
import 'package:stockfm/pages/about.dart';
import 'package:stockfm/pages/barang.dart';
import 'package:stockfm/pages/started.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getStarted(),
    );
  }
}
