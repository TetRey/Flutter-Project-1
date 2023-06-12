import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockfm/models/user.dart';
import 'package:stockfm/pages/login.dart';
import 'package:stockfm/pages/navbar.dart';
import 'package:stockfm/provider/auth_service.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<UserModel?>(stream: authService.user, builder: (_, AsyncSnapshot<UserModel?> snapshot){
      if (snapshot.connectionState == ConnectionState.active){
        final UserModel? user = snapshot.data;
        return user == null? loginPage(): navbar();
      } else {
        return Scaffold(body: Center(child: CircularProgressIndicator(),),);
      }
    });
  }
}