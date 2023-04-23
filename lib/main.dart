import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockfm/models/model.dart';
import 'package:stockfm/pages/about.dart';
import 'package:stockfm/pages/barang.dart';
import 'package:stockfm/pages/homepage.dart';
import 'package:stockfm/pages/started.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:stockfm/provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => all_product(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: getStarted(),
        routes: {},
      ),
    );
  }
}
