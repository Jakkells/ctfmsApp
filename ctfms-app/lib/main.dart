import 'package:ctfms_app/Pages/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure widgets are initialized

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBcrXMP2BoGq_yxxaBujNICy_mQhgsxiNM",
            authDomain: "ctfms-app.firebaseapp.com",
            projectId: "ctfms-app",
            storageBucket: "ctfms-app.firebasestorage.app",
            messagingSenderId: "211131111971",
            appId: "1:211131111971:web:6137f6f802517003edef96",
            measurementId: "G-MLJ8C87FFH"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CTFMS App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
