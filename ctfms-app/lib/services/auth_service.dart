import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ctfms_app/Pages/EmployeeView1.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Future<void> signin({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      // Attempt to sign in with the provided email and password
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      // Optional delay (if needed)
      await Future.delayed(const Duration(seconds: 1));

      // Navigate to EmployeeView1 on successful sign-in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const EmployeeView1()),
      );
    } on FirebaseAuthException catch (e) {
      // Define error message based on error code
      String? message;
      message = e.message;

      // Display the error message in a SnackBar (on mobile)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message!)),
      );
    } catch (e) {
      // Handle any other exceptions
      Fluttertoast.showToast(
        msg: 'An unexpected error occurred. Please try again.',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }
}
