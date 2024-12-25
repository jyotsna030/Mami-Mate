import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvY7V558oJQVrFucuk6lwFFlSPy2wAixk",
            authDomain: "mamimate-7fa1f.firebaseapp.com",
            projectId: "mamimate-7fa1f",
            storageBucket: "mamimate-7fa1f.firebasestorage.app",
            messagingSenderId: "639597265576",
            appId: "1:639597265576:web:0de10eca92c5712ea0789d",
            measurementId: "G-HFSBVEL8Q5"));
  } else {
    await Firebase.initializeApp();
  }
}
