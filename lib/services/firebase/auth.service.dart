import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../base.service.dart';

/// [AuthService]
/// This is a basic classe to provide some firebase_auth's utilities
class AuthService extends BaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user = FirebaseAuth.instance.currentUser!;

  Future<bool> signInWithMailAndPassword(
    String mail,
    String password,
  ) async {
    bool isOk = true;
    try {
      await _auth.signInWithEmailAndPassword(email: mail, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        isOk = false;
        debugPrint("Sign In failed. Error: " + e.code);
      } else if (e.code == 'wrong-password') {
        isOk = false;
        debugPrint("Sign In failed. Error: " + e.code);
      } else {
        isOk = false;
        debugPrint("Sign In failed. Error: " + e.code);
      }
    }
    return isOk;
  }

  Future signUpWithMailAndPassword(
    String mail,
    String password,
  ) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: mail, password: password);
    } on FirebaseAuthException catch (e) {
      debugPrint("Sign Up failed. Error: " + e.code);
    }
  }

  Future signOut(Function? afterSignOut) async {
    try {
      await _auth.signOut();
      if (afterSignOut != null) afterSignOut();
    } on FirebaseAuthException catch (e) {
      debugPrint("Sign Out failed. Error: " + e.code);
    }
  }
}

var auth =
    new AuthService(); // if necessary. Feel free to delete this line if you prefer use locator
