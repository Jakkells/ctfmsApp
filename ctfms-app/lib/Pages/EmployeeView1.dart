import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmployeeView1 extends StatelessWidget {
  const EmployeeView1({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current user from FirebaseAuth
    User? user = FirebaseAuth.instance.currentUser;

    // If the user is null, it means they are not signed in
    if (user == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Employee View'),
        ),
        body: Center(
          child: Text('No user is signed in'),
        ),
      );
    }

    // Display the email of the signed-in user
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee View'),
      ),
      body: Center(
        child: Text(
          'Signed in as: ${user.email}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
