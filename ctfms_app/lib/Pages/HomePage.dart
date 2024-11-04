// ignore_for_file: file_names

import 'package:ctfms_app/Pages/LoginPage.dart';
import 'package:ctfms_app/Pages/registerPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Cape Town Fire and Maintenance Services',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18), // Adjust as needed
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegisterPage()),
              ),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
