import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:stockfm/models/user.dart';

class AuthService with ChangeNotifier {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  UserModel? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return UserModel(user.uid, user.email);
  }

  Stream<UserModel?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<UserModel?> signInWithEmailAndPassword(
      String email, String password) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return _userFromFirebase(credential.user);
  }

  Future<UserModel?> createUserWithEmailAndPassword(
      String email, String password) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return _userFromFirebase(credential.user);
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }

  Future<UserModel?> updateUserData(String displayName) async {
    await auth.FirebaseAuth.instance.currentUser!
        .updateDisplayName(displayName);
    notifyListeners();
    return null;
  }

  Future<UserModel?> updateProfile(String displayName, String URL) async {
    await auth.FirebaseAuth.instance.currentUser!
        .updateDisplayName(displayName);
    await auth.FirebaseAuth.instance.currentUser!.updatePhotoURL(URL);
    await auth.FirebaseAuth.instance.currentUser?.reload();
    notifyListeners();
    return null;
  }
}
