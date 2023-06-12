import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockfm/models/model.dart';
import 'package:stockfm/models/user.dart';
import 'package:stockfm/pages/about.dart';
import 'package:stockfm/pages/barang.dart';
import 'package:stockfm/pages/homepage.dart';
import 'package:stockfm/pages/login.dart';
import 'package:stockfm/pages/sign.dart';
import 'package:stockfm/pages/started.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:stockfm/pages/wrapper.dart';
import 'package:stockfm/provider/auth_service.dart';
import 'package:stockfm/provider/favorit.dart';
import 'package:stockfm/provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {   
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => all_product()),
        ChangeNotifierProvider(create: (context) => AuthService()),
        ChangeNotifierProvider(create: (context) => favProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/login': (context) => loginPage(),
          '/register': (context) => signUp(),
        },
      ),
    );
  }
}
